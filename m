Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FD08188EC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 14:51:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B12110E050;
	Tue, 19 Dec 2023 13:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5C8A810E16A;
 Tue, 19 Dec 2023 13:51:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 52610AADD6;
 Tue, 19 Dec 2023 13:51:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7579992052287828668=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Cursor_vblank_e?=
 =?utf-8?q?vasion?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 19 Dec 2023 13:51:00 -0000
Message-ID: <170299386030.17583.13975029931675125641@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

--===============7579992052287828668==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Cursor vblank evasion
URL   : https://patchwork.freedesktop.org/series/127744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14017_full -> Patchwork_127744v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127744v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127744v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 8)
------------------------------

  Additional (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127744v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html

  
Known issues
------------

  Here are the changes found in Patchwork_127744v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@bonded-chain:
    - shard-rkl:          NOTRUN -> [ABORT][3] ([i915#9856])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_balancer@bonded-chain.html
    - shard-dg1:          NOTRUN -> [ABORT][4] ([i915#9856])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@gem_exec_balancer@bonded-chain.html

  * igt@gem_exec_balancer@full:
    - shard-dg2:          NOTRUN -> [ABORT][5] ([i915#9855] / [i915#9856])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@gem_exec_balancer@full.html
    - shard-rkl:          NOTRUN -> [INCOMPLETE][6] ([i915#9856])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-4/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@indices:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][7] ([i915#9856])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-6/igt@gem_exec_balancer@indices.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-dg1:          NOTRUN -> [ABORT][8] ([i915#9855]) +1 other test abort
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][9] ([i915#3281])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][10] -> [ABORT][11] ([i915#7975] / [i915#8213])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][12] ([i915#6755] / [i915#9857])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#4083]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_readwrite@new-obj:
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#3282]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#8428])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4077]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-tglu:         NOTRUN -> [FAIL][17] ([i915#3318])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#2856])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][19] -> [INCOMPLETE][20] ([i915#9200] / [i915#9849])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][21] ([i915#9847] / [i915#9858])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][22] ([i915#9858])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@i915_pm_rc6_residency@rc6-fence@gt1.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][23] ([i915#9858])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-snb:          NOTRUN -> [INCOMPLETE][24] ([i915#9858])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][25] ([i915#9858])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
    - shard-dg2:          NOTRUN -> [ABORT][26] ([i915#9855] / [i915#9858])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][27] ([i915#5138])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([fdo#111615]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][29] -> [FAIL][30] ([i915#3743])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#5190])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([fdo#111615])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#5354] / [i915#6095]) +6 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#5354] / [i915#6095])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#7828]) +1 other test skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#3555] / [i915#8814]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([fdo#109274] / [i915#5354])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#8588])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_flip@2x-busy-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#3637])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#2672])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][41] ([i915#1825]) +7 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-snb:          [PASS][42] -> [SKIP][43] ([fdo#109271]) +6 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8708])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][45] ([fdo#110189])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#3555] / [i915#8228])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3555] / [i915#8228])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#9423]) +3 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#5235]) +2 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#3555] / [i915#5235])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#5235]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#5235]) +7 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#3555] / [i915#8809])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vrr@flip-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3555] / [i915#8808])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_vrr@flip-dpms.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-dg2:          NOTRUN -> [ABORT][55] ([i915#9847]) +1 other test abort
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-3/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-glk:          NOTRUN -> [ABORT][56] ([i915#9847]) +1 other test abort
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@global-sseu-config-invalid@0-rcs0:
    - shard-dg1:          NOTRUN -> [ABORT][57] ([i915#9847])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@perf@global-sseu-config-invalid@0-rcs0.html

  * igt@perf@polling-parameterized:
    - shard-mtlp:         NOTRUN -> [ABORT][58] ([i915#9847]) +1 other test abort
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@perf@polling-parameterized.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-mtlp:         NOTRUN -> [ABORT][59] ([i915#9847] / [i915#9853])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@faulting-read:
    - shard-glk:          NOTRUN -> [INCOMPLETE][60] ([i915#9853])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk8/igt@perf_pmu@faulting-read.html

  * igt@perf_pmu@faulting-read@fixed:
    - shard-dg2:          NOTRUN -> [ABORT][61] ([i915#9847] / [i915#9853])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@perf_pmu@faulting-read@fixed.html

  * igt@perf_pmu@frequency:
    - shard-snb:          NOTRUN -> [INCOMPLETE][62] ([i915#9853])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb7/igt@perf_pmu@frequency.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#2575]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@vc4/vc4_perfmon@create-perfmon-invalid-events:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#7711])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html

  * igt@vc4/vc4_purgeable_bo@free-purged-bo:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#7711])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@vc4/vc4_purgeable_bo@free-purged-bo.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][66] ([i915#2842]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
    - shard-glk:          [FAIL][68] ([i915#2842]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-mtlp:         [ABORT][70] ([i915#9857]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-mtlp:         [ABORT][72] ([i915#9855] / [i915#9857]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-4/igt@gem_exec_whisper@basic-queues.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@gem_exec_whisper@basic-queues.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-tglu:         [INCOMPLETE][74] -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][76] ([i915#3743]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][78] ([fdo#109271] / [fdo#111767]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [FAIL][80] ([i915#2346]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full-late:
    - shard-dg2:          [INCOMPLETE][82] ([i915#9856]) -> [ABORT][83] ([i915#9855] / [i915#9856])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-1/igt@gem_exec_balancer@full-late.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-3/igt@gem_exec_balancer@full-late.html
    - shard-rkl:          [INCOMPLETE][84] ([i915#9856]) -> [ABORT][85] ([i915#9855] / [i915#9856])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/igt@gem_exec_balancer@full-late.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [INCOMPLETE][86] ([i915#9857]) -> [ABORT][87] ([i915#9857])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [ABORT][88] ([i915#9855] / [i915#9857]) -> [INCOMPLETE][89] ([i915#9857])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk5/igt@gem_exec_whisper@basic-normal.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-rkl:          [INCOMPLETE][90] ([i915#9847] / [i915#9858]) -> [ABORT][91] ([i915#9855] / [i915#9858])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rps@fence-order:
    - shard-dg1:          [ABORT][92] ([i915#9855]) -> [INCOMPLETE][93] ([i915#9899])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-15/igt@i915_pm_rps@fence-order.html
    - shard-dg2:          [INCOMPLETE][94] ([i915#9899]) -> [ABORT][95] ([i915#9855])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-10/igt@i915_pm_rps@fence-order.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@i915_pm_rps@fence-order.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][96] ([i915#9433]) -> [SKIP][97] ([i915#9424])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html
    - shard-snb:          [INCOMPLETE][98] ([i915#9878]) -> [SKIP][99] ([fdo#109271])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb6/igt@kms_content_protection@mei-interface.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][100] ([fdo#110189] / [i915#3955]) -> [SKIP][101] ([i915#3955])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-rkl:          [INCOMPLETE][102] ([i915#9847] / [i915#9853]) -> [ABORT][103] ([i915#9847] / [i915#9853])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy@rcs0:
    - shard-rkl:          [INCOMPLETE][104] ([i915#9853]) -> [ABORT][105] ([i915#9847] / [i915#9853])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@perf_pmu@busy@rcs0.html
    - shard-dg1:          [ABORT][106] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][107] ([i915#9853])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-12/igt@perf_pmu@busy@rcs0.html

  * igt@perf_pmu@interrupts:
    - shard-rkl:          [ABORT][108] ([i915#9847] / [i915#9853]) -> [INCOMPLETE][109] ([i915#9853])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-2/igt@perf_pmu@interrupts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6755]: https://gitlab.freedesktop.org/drm/intel/issues/6755
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9855]: https://gitlab.freedesktop.org/drm/intel/issues/9855
  [i915#9856]: https://gitlab.freedesktop.org/drm/intel/issues/9856
  [i915#9857]: https://gitlab.freedesktop.org/drm/intel/issues/9857
  [i915#9858]: https://gitlab.freedesktop.org/drm/intel/issues/9858
  [i915#9878]: https://gitlab.freedesktop.org/drm/intel/issues/9878
  [i915#9899]: https://gitlab.freedesktop.org/drm/intel/issues/9899


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127744v1

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127744v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/index.html

--===============7579992052287828668==
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
<tr><td><b>Series:</b></td><td>drm/i915: Cursor vblank evasion</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127744/">https://patchwork.freedesktop.org/series/127744/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017_full -&gt; Patchwork_127744v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127744v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127744v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (7 -&gt; 8)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127744v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@single-move@all-pipes:<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127744v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_balancer@bonded-chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@gem_exec_balancer@bonded-chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@gem_exec_balancer@full.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-4/igt@gem_exec_balancer@full.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@indices:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-6/igt@gem_exec_balancer@indices.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@gem_exec_balancer@parallel-balancer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@gem_exec_whisper@basic-contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6755">i915#6755</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_readwrite@new-obj.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@gem_tiled_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9200">i915#9200</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@i915_pm_rc6_residency@rc6-fence@gt1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk2/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_flip@2x-busy-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@kms_vrr@flip-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8808">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-3/igt@perf@gen12-group-exclusive-stream-ctx-handle.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@perf@gen12-oa-tlb-invalidate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid@0-rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-13/igt@perf@global-sseu-config-invalid@0-rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@perf@polling-parameterized.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@perf_pmu@busy-check-all@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk8/igt@perf_pmu@faulting-read.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@fixed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@perf_pmu@faulting-read@fixed.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb7/igt@perf_pmu@frequency.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-6/igt@v3d/v3d_perfmon@get-values-invalid-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-invalid-events:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@free-purged-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@vc4/vc4_purgeable_bo@free-purged-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-5/igt@gem_exec_whisper@basic-contexts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-mtlp-4/igt@gem_exec_whisper@basic-queues.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-mtlp-7/igt@gem_exec_whisper@basic-queues.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-2/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-1/igt@gem_exec_balancer@full-late.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-3/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-4/igt@gem_exec_balancer@full-late.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@gem_exec_balancer@full-late.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9856">i915#9856</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk1/igt@gem_exec_whisper@basic-fds-forked.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-glk1/igt@gem_exec_whisper@basic-normal.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-glk5/igt@gem_exec_whisper@basic-normal.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9857">i915#9857</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9858">i915#9858</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fence-order:</p>
<ul>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-15/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9899">i915#9899</a>)</p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg2-10/igt@i915_pm_rps@fence-order.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9899">i915#9899</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg2-7/igt@i915_pm_rps@fence-order.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9855">i915#9855</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-19/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-snb7/igt@kms_content_protection@mei-interface.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9878">i915#9878</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-snb6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@perf_pmu@busy-check-all@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-7/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-5/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-dg1-13/igt@perf_pmu@busy@rcs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-dg1-12/igt@perf_pmu@busy@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/shard-rkl-5/igt@perf_pmu@interrupts.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127744v1/shard-rkl-2/igt@perf_pmu@interrupts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127744v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127744v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7579992052287828668==--
