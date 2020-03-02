Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3164175194
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 02:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A46B6E038;
	Mon,  2 Mar 2020 01:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F28D6E038;
 Mon,  2 Mar 2020 01:45:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DED7A0019;
 Mon,  2 Mar 2020 01:45:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mario Kleiner" <mario.kleiner.de@gmail.com>
Date: Mon, 02 Mar 2020 01:45:41 -0000
Message-ID: <158311354148.30643.12580030377018603623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200229054108.2781-1-mario.kleiner.de@gmail.com>
In-Reply-To: <20200229054108.2781-1-mario.kleiner.de@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Add_dpcd_link=5Frate_quirk_for_Apple_15=22_MBP_2017?=
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

Series: drm/i915/dp: Add dpcd link_rate quirk for Apple 15" MBP 2017
URL   : https://patchwork.freedesktop.org/series/74100/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8035_full -> Patchwork_16772_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16772_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16772_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16772_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-audio-edid:
    - shard-hsw:          [SKIP][3] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_chamelium@dp-audio-edid.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@kms_chamelium@dp-audio-edid.html

  * igt@kms_psr@primary_blt:
    - shard-hsw:          [SKIP][5] ([fdo#109271]) -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@kms_psr@primary_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@kms_psr@primary_blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@perf@stress-open-close}:
    - shard-hsw:          [PASS][7] -> [TIMEOUT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@perf@stress-open-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@perf@stress-open-close.html
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl1/igt@perf@stress-open-close.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl3/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_16772_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@wait-immediate:
    - shard-hsw:          [PASS][11] -> [TIMEOUT][12] ([i915#1084])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@gem_eio@wait-immediate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@gem_eio@wait-immediate.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#1277])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb5/igt@gem_exec_balancer@hang.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276] / [i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb5/igt@gem_exec_schedule@preempt-self-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_store@cachelines-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#413])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@i915_pm_rps@reset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@kms_busy@extended-modeset-hang-newfb-with-reset-render-pipe-a:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#56] / [i915#62] / [i915#92]) +10 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl3/igt@kms_busy@extended-modeset-hang-newfb-with-reset-render-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl2/igt@kms_busy@extended-modeset-hang-newfb-with-reset-render-pipe-a.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#62] / [i915#92]) +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#54])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#62] / [i915#74] / [i915#92])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-hsw:          [PASS][47] -> [INCOMPLETE][48] ([i915#61])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#56] / [i915#62])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#1188]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-hsw:          [PASS][55] -> [DMESG-FAIL][56] ([IGT#6])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([fdo#108145])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][61] -> [FAIL][62] ([i915#899])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][63] -> [SKIP][64] ([fdo#109441]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +12 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [FAIL][67] ([i915#679]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [FAIL][69] ([i915#679]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-skl:          [INCOMPLETE][71] ([i915#1239]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [INCOMPLETE][73] ([i915#1239]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-tglb8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#110841]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +13 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb6/igt@gem_exec_schedule@fifo-bsd1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276] / [i915#677]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][81] ([i915#677]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [SKIP][83] ([fdo#112146]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_schedule@preempt-hang-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb5/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-iclb:         [INCOMPLETE][85] -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb4/igt@gem_exec_whisper@basic-fds-forked.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][87] ([i915#644]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [DMESG-WARN][91] ([i915#118] / [i915#95]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-glk5/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][95] ([IGT#5]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][97] ([i915#221]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][99] ([i915#34]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [SKIP][101] ([i915#668]) -> [PASS][102] +4 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][103] ([IGT#6]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-skl6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-common-vebox:
    - shard-hsw:          [SKIP][107] ([fdo#109271]) -> [TIMEOUT][108] ([i915#1084])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-hsw5/igt@gem_exec_schedule@pi-common-vebox.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-hsw4/igt@gem_exec_schedule@pi-common-vebox.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-snb:          [SKIP][109] ([fdo#109271]) -> [INCOMPLETE][110] ([i915#82])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-snb6/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-snb4/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][111] ([i915#1226]) -> [SKIP][112] ([fdo#109349])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8035/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#74]: https://gitlab.freedesktop.org/drm/intel/issues/74
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8035 -> Patchwork_16772

  CI-20190529: 20190529
  CI_DRM_8035: cacad502dcd40516c6a9be38ca3ef0c1288f4cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16772: 983ed114d770b6d3f542ca959c02450ff64faf9d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16772/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
