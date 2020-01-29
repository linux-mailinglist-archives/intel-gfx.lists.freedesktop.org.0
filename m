Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DC914C3F0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 01:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1A26E172;
	Wed, 29 Jan 2020 00:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C7E86E172;
 Wed, 29 Jan 2020 00:24:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D87CA0087;
 Wed, 29 Jan 2020 00:24:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Paauwe, Bob J" <bob.j.paauwe@intel.com>
Date: Wed, 29 Jan 2020 00:24:33 -0000
Message-ID: <158025747302.5462.12260663111541398360@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200127192203.19807-1-bob.j.paauwe@intel.com>
In-Reply-To: <20200127192203.19807-1-bob.j.paauwe@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Adding_YUV444_packed_format_support_for_skl+_=28rev3?=
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

Series: drm/i915: Adding YUV444 packed format support for skl+ (rev3)
URL   : https://patchwork.freedesktop.org/series/66770/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7827_full -> Patchwork_16284_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16284_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16284_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16284_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-iclb:         [PASS][1] -> [FAIL][2] +14 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][3] -> [FAIL][4] +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes.html
    - shard-kbl:          [PASS][5] -> [FAIL][6] +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-glk:          [PASS][7] -> [FAIL][8] +13 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-glk8/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
    - shard-apl:          [PASS][9] -> [FAIL][10] +13 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl1/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-apl7/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-rotation:
    - shard-skl:          NOTRUN -> [FAIL][11] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl2/igt@kms_plane_scaling@pipe-c-scaler-with-rotation.html

  * igt@kms_plane_scaling@pipe-d-scaler-with-clipping-clamping:
    - shard-tglb:         [PASS][12] -> [FAIL][13] +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb2/igt@kms_plane_scaling@pipe-d-scaler-with-clipping-clamping.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-tglb4/igt@kms_plane_scaling@pipe-d-scaler-with-clipping-clamping.html

  
Known issues
------------

  Here are the changes found in Patchwork_16284_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112080]) +14 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][18] -> [INCOMPLETE][19] ([i915#82])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb1/igt@gem_eio@kms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-snb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#110854])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112146]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb6/igt@gem_exec_schedule@fifo-bsd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb4/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#109])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl4/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#54])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#34])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_event_leak:
    - shard-snb:          [PASS][36] -> [SKIP][37] ([fdo#109271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-snb4/igt@kms_flip_event_leak.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-snb6/igt@kms_flip_event_leak.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145] / [i915#265]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][48] -> [FAIL][49] ([i915#31])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-glk6/igt@kms_setmode@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-glk2/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109276]) +18 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][52] ([fdo#109276] / [fdo#112080]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][54] ([i915#69]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][56] ([fdo#112080]) -> [PASS][57] +9 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +6 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-kbl3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-apl8/igt@gem_softpin@noreloc-s3.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][66] ([i915#694]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw4/igt@gem_tiled_blits@normal.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-hsw6/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][68] ([i915#413]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][70] ([i915#300]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][72] ([i915#221]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][74] ([fdo#108145]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][76] ([fdo#109642] / [fdo#111068]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][80] ([fdo#109276]) -> [PASS][81] +18 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][82] ([fdo#109276] / [fdo#112080]) -> [FAIL][83] ([IGT#28])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][84] ([i915#818]) -> [FAIL][85] ([i915#694])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7827/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/shard-hsw4/igt@gem_tiled_blits@interruptible.html

  
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
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7827 -> Patchwork_16284

  CI-20190529: 20190529
  CI_DRM_7827: c8969aeacfff681c83a800e82b0f18a6ab3e77ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5389: 966c58649dee31bb5bf2fad92f75ffd365968b81 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16284: a705c01c469eb9cfaa89e35d27a1e17b7389d308 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16284/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
