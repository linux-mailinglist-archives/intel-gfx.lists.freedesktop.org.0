Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C702749311E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 00:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007B610E19F;
	Tue, 18 Jan 2022 23:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9883C10E13F;
 Tue, 18 Jan 2022 23:01:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87ED4A00A0;
 Tue, 18 Jan 2022 23:01:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5329958199835303042=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bjorn Helgaas" <helgaas@kernel.org>
Date: Tue, 18 Jan 2022 23:01:42 -0000
Message-ID: <164254690252.25102.16530818490575857671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
In-Reply-To: <20220114002843.2083382-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/5=5D_x86/quirks=3A_Fix_stolen_detec?=
 =?utf-8?q?tion_with_integrated_+_discrete_GPU_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5329958199835303042==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,1/5] x86/quirks: Fix stolen detection with integrated + discrete GPU (rev3)
URL   : https://patchwork.freedesktop.org/series/98864/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11094_full -> Patchwork_22018_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22018_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22018_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22018_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@insert_range:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@drm_mm@all@insert_range.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_persistence@userptr:
    - {shard-rkl}:        [PASS][2] -> [FAIL][3] +42 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_ctx_persistence@userptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_ctx_persistence@userptr.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0:
    - {shard-tglu}:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglu-7/igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0.html

  * igt@gem_exec_whisper@basic-sync-all:
    - {shard-rkl}:        [PASS][6] -> [INCOMPLETE][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@gem_exec_whisper@basic-sync-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_exec_whisper@basic-sync-all.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        ([SKIP][8], [SKIP][9]) ([i915#3282]) -> ([SKIP][10], [FAIL][11]) ([i915#3282])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - {shard-rkl}:        [SKIP][12] ([i915#4270]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_sync@basic-all:
    - {shard-rkl}:        ([PASS][14], [PASS][15]) -> [FAIL][16] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_sync@basic-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_sync@basic-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_sync@basic-all.html

  * igt@gen7_exec_parse@load-register-reg:
    - {shard-rkl}:        [SKIP][17] ([fdo#109289]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gen7_exec_parse@load-register-reg.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gen7_exec_parse@load-register-reg.html

  * igt@kms_atomic_transition@plane-all-transition-fencing:
    - {shard-rkl}:        NOTRUN -> [FAIL][19] +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-fencing.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - {shard-rkl}:        ([PASS][20], [SKIP][21]) ([i915#1845]) -> [FAIL][22]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - {shard-rkl}:        [SKIP][23] ([fdo#111614] / [i915#3638]) -> ([FAIL][24], [SKIP][25]) ([i915#1845])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][26] ([fdo#110723]) -> ([FAIL][27], [SKIP][28]) ([i915#1845])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:
    - {shard-rkl}:        [SKIP][29] ([i915#3734] / [i915#4070]) -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - {shard-rkl}:        ([SKIP][31], [SKIP][32]) ([i915#1845] / [i915#4070] / [i915#533]) -> [FAIL][33]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - {shard-rkl}:        ([SKIP][34], [SKIP][35]) ([fdo#111827]) -> ([FAIL][36], [SKIP][37]) ([fdo#111827])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][38] ([fdo#111827]) -> [FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
    - {shard-rkl}:        [SKIP][40] ([i915#3359] / [i915#4070]) -> [FAIL][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
    - {shard-rkl}:        [SKIP][42] ([fdo#109279] / [i915#3359] / [i915#4070]) -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-max-size-random:
    - {shard-rkl}:        [SKIP][44] ([i915#4070] / [i915#533]) -> [FAIL][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-d-cursor-max-size-random.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-d-cursor-max-size-random.html

  * igt@kms_cursor_legacy@all-pipes-forked-move:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][46]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_legacy@all-pipes-forked-move.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - {shard-rkl}:        [SKIP][47] ([fdo#111825] / [i915#4070]) -> [FAIL][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - {shard-rkl}:        [SKIP][49] ([fdo#111825]) -> [FAIL][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - {shard-rkl}:        [SKIP][51] ([i915#2672]) -> [FAIL][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - {shard-rkl}:        ([SKIP][53], [SKIP][54]) ([fdo#111825] / [i915#1825] / [i915#4098]) -> [FAIL][55] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - {shard-rkl}:        ([PASS][56], [SKIP][57]) ([i915#4098]) -> ([FAIL][58], [SKIP][59]) ([i915#4098])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - {shard-rkl}:        [SKIP][60] ([fdo#111825] / [i915#1825]) -> [FAIL][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - {shard-rkl}:        [SKIP][62] ([i915#4070]) -> [FAIL][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - {shard-rkl}:        [SKIP][64] ([i915#533]) -> [FAIL][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_psr@cursor_mmap_cpu:
    - {shard-rkl}:        [PASS][66] -> ([SKIP][67], [FAIL][68]) ([i915#1072])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@psr2_primary_render:
    - {shard-rkl}:        [FAIL][69] ([i915#132]) -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_psr@psr2_primary_render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_psr@psr2_primary_render.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - {shard-rkl}:        ([PASS][71], [SKIP][72]) ([i915#1845]) -> ([FAIL][73], [SKIP][74]) ([i915#1845])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-270.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_rotation_crc@sprite-rotation-270.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_vblank@pipe-c-query-forked-hang:
    - {shard-rkl}:        [SKIP][75] ([i915#4070]) -> ([SKIP][76], [FAIL][77]) ([i915#1845])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_vblank@pipe-c-query-forked-hang.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_vblank@pipe-c-query-forked-hang.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_vblank@pipe-c-query-forked-hang.html

  * igt@kms_vrr@flip-dpms:
    - {shard-rkl}:        [SKIP][78] ([fdo#109502]) -> [FAIL][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_vrr@flip-dpms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_vrr@flip-dpms.html

  * igt@prime_nv_pcopy@test3_4:
    - {shard-rkl}:        [SKIP][80] ([fdo#109291]) -> [FAIL][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@prime_nv_pcopy@test3_4.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@prime_nv_pcopy@test3_4.html

  * igt@syncobj_timeline@wait-all-complex:
    - {shard-rkl}:        ([PASS][82], [PASS][83]) -> ([PASS][84], [FAIL][85])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@syncobj_timeline@wait-all-complex.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@syncobj_timeline@wait-all-complex.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@syncobj_timeline@wait-all-complex.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@syncobj_timeline@wait-all-complex.html

  
Known issues
------------

  Here are the changes found in Patchwork_22018_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][86] -> [SKIP][87] ([i915#4525]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][88] ([i915#2846])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][89] ([i915#2842]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][90] -> [FAIL][91] ([i915#2842])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2190])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#4613]) +4 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#4613]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pread@exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][95] ([i915#2658])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][96] ([i915#2658])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +158 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_spin_batch@spin-each:
    - shard-skl:          NOTRUN -> [DMESG-WARN][98] ([i915#1982]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@gem_spin_batch@spin-each.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3323])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3323])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#2527] / [i915#2856])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][102] ([i915#454])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#3743]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#111614])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#3777])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#3777]) +2 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([fdo#111615])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +18 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3886]) +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#3886]) +14 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#3742])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_cdclk@mode-transition.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [fdo#111827]) +34 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +475 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([i915#3319])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][117] -> [INCOMPLETE][118] ([i915#180] / [i915#636])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][119] -> [FAIL][120] ([i915#79])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][121] -> [DMESG-WARN][122] ([i915#180]) +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][123] ([i915#2122]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-skl:          NOTRUN -> [INCOMPLETE][124] ([i915#3701])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          [PASS][125] -> [DMESG-WARN][126] ([i915#1982])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][128] ([i915#1188]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([fdo#109289])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#533]) +3 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#533]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][132] ([i915#265]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][133] ([fdo#108145] / [i915#265]) +5 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-kbl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#658])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#658]) +5 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][136] ([i915#132] / [i915#3467])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][137] -> [SKIP][138] ([fdo#109441])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2437]) +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl10/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][140] -> [FAIL][141] ([i915#1722])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl6/igt@perf@polling-small-buf.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl7/igt@perf@polling-small-buf.html

  * igt@perf@short-reads:
    - shard-skl:          NOTRUN -> [FAIL][142] ([i915#51])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@perf@short-reads.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKI

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/index.html

--===============5329958199835303042==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [v5,1/5] x86/quirks: Fix stolen detection with integrated + discrete GPU (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98864/">https://patchwork.freedesktop.org/series/98864/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11094_full -&gt; Patchwork_22018_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22018_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22018_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22018_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@drm_mm@all@insert_range:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@drm_mm@all@insert_range.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_persistence@userptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_ctx_persistence@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_ctx_persistence@userptr.html">FAIL</a> +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-tglu-7/igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglu-7/igt@gem_exec_schedule@preempt-queue-contexts-chain@vecs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-sync-all:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-2/igt@gem_exec_whisper@basic-sync-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_exec_whisper@basic-sync-all.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a>) ([i915#3282]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">FAIL</a>) ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-2.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gem_sync@basic-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@gem_sync@basic-all.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gem_sync@basic-all.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@gen7_exec_parse@load-register-reg.html">SKIP</a> ([fdo#109289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@gen7_exec_parse@load-register-reg.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-fencing.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#111614] / [i915#3638]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a>) ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#110723]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a>) ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html">SKIP</a> ([i915#3734] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">SKIP</a>) ([i915#1845] / [i915#4070] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a>) ([fdo#111827]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_color_chamelium@pipe-a-ctm-max.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a>) ([fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#111827]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-max-size-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_crc@pipe-d-cursor-max-size-random.html">SKIP</a> ([i915#4070] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_crc@pipe-d-cursor-max-size-random.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-forked-move:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_legacy@all-pipes-forked-move.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a>) ([fdo#111825] / [i915#1825] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a>) ([i915#4098]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a>) ([i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825] / [i915#1825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_psr@cursor_mmap_cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_psr@cursor_mmap_cpu.html">FAIL</a>) ([i915#1072])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_psr@psr2_primary_render.html">FAIL</a> ([i915#132]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_psr@psr2_primary_render.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_rotation_crc@sprite-rotation-270.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a>) ([i915#1845]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_rotation_crc@sprite-rotation-270.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a>) ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-forked-hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_vblank@pipe-c-query-forked-hang.html">SKIP</a> ([i915#4070]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@kms_vblank@pipe-c-query-forked-hang.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_vblank@pipe-c-query-forked-hang.html">FAIL</a>) ([i915#1845])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@kms_vrr@flip-dpms.html">SKIP</a> ([fdo#109502]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@kms_vrr@flip-dpms.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_4:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@prime_nv_pcopy@test3_4.html">SKIP</a> ([fdo#109291]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@prime_nv_pcopy@test3_4.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-complex:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-6/igt@syncobj_timeline@wait-all-complex.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-rkl-4/igt@syncobj_timeline@wait-all-complex.html">PASS</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-4/igt@syncobj_timeline@wait-all-complex.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-rkl-5/igt@syncobj_timeline@wait-all-complex.html">FAIL</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22018_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> ([i915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +158 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-each:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@gem_spin_batch@spin-each.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3743]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +475 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">INCOMPLETE</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-kbl4/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl10/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11094/shard-skl6/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl7/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22018/shard-skl9/igt@perf@short-reads.html">FAIL</a> ([i915#51])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; [SKI</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5329958199835303042==--
