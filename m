Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD0B4CD55F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 14:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF2C10F80A;
	Fri,  4 Mar 2022 13:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DBAE10F790;
 Fri,  4 Mar 2022 13:45:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 790F5A0118;
 Fri,  4 Mar 2022 13:45:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1890601144000234447=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 04 Mar 2022 13:45:31 -0000
Message-ID: <164640153145.21338.16097696270871343543@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220303223435.2793124-1-matthew.d.roper@intel.com>
In-Reply-To: <20220303223435.2793124-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/xehp=3A_Support_platforms_?=
 =?utf-8?q?with_CCS_engines_but_no_RCS?=
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

--===============1890601144000234447==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/xehp: Support platforms with CCS engines but no RCS
URL   : https://patchwork.freedesktop.org/series/101019/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11321_full -> Patchwork_22481_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22481_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@api_intel_allocator@fork-simple-stress-signal:
    - {shard-dg1}:        [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-12/igt@api_intel_allocator@fork-simple-stress-signal.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-17/igt@api_intel_allocator@fork-simple-stress-signal.html

  * igt@gem_ctx_sseu@mmap-args:
    - {shard-dg1}:        [SKIP][3] ([i915#280]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_ctx_sseu@mmap-args.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_fence@nb-await:
    - {shard-dg1}:        NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_fence@nb-await.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - {shard-dg1}:        [SKIP][6] ([i915#3281]) -> [SKIP][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_exec_reloc@basic-write-cpu-active.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gen9_exec_parse@allowed-single:
    - {shard-dg1}:        [SKIP][8] ([i915#2527]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gen9_exec_parse@allowed-single.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_3d:
    - {shard-dg1}:        [PASS][10] -> [SKIP][11] +26 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_3d.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_3d.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - {shard-dg1}:        [PASS][12] -> [FAIL][13] +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - {shard-dg1}:        [SKIP][14] ([i915#3359]) -> [SKIP][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation}:
    - {shard-dg1}:        [SKIP][16] ([i915#5176]) -> [SKIP][17] +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html

  * {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
    - {shard-rkl}:        NOTRUN -> [SKIP][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@perf_pmu@busy-double-start:
    - {shard-dg1}:        NOTRUN -> [SKIP][19] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@perf_pmu@busy-double-start.html

  * igt@prime_vgem@basic-read:
    - {shard-dg1}:        [SKIP][20] ([i915#3708]) -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@prime_vgem@basic-read.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@prime_vgem@basic-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_22481_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@engines:
    - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([i915#3063])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#5076])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@gem_exec_balancer@parallel.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][26] ([i915#5076])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([i915#4525])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#2842])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#2842]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#644])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([i915#4281])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111614])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][43] -> [DMESG-WARN][44] ([i915#118]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3689]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +23 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_chamelium@dp-crc-fast.html
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl2/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][51] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_content_protection@lic.html
    - shard-kbl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2346])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#4911])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2546])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +48 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html
    - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109289])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109441])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#2437])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2437])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2530])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@sysfs_clients@sema-50.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-glk:          [PASS][71] -> [WARN][72] ([i915#4055])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#1731])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - {shard-rkl}:        ([TIMEOUT][75], [PASS][76]) ([i915#3063]) -> [PASS][77]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@gem_eio@in-flight-contexts-immediate.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][78] ([i915#5115]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@gem_eio@suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][80] ([i915#3063] / [i915#3648]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][86] ([i915#2849]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][88] ([i915#2190]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rps@reset:
    - {shard-dg1}:        [FAIL][90] ([i915#3719]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-15/igt@i915_pm_rps@reset.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-12/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][92] ([i915#3921]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][94] ([i915#118]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][96] ([i915#402]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglu-3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][98] ([i915#1845] / [i915#4098]) -> [PASS][99] +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        ([SKIP][100], [SKIP][101]) ([i915#1845]) -> [PASS][102] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-gamma:
    - {shard-rkl}:        [SKIP][103] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-gamma.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_color@pipe-a-legacy-gamma-reset:
    - {shard-rkl}:        [SKIP][105] ([i915#1849] / [i915#4070]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-legacy-gamma-reset.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-legacy-gamma-reset.html

  * igt@kms_concurrent@pipe-a:
    - {shard-rkl}:        [SKIP][107] ([i915#1845] / [i915#4070]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_concurrent@pipe-a.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:
    - {shard-rkl}:        [SKIP][109] ([fdo#112022] / [i915#4070]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - {shard-rkl}:        ([SKIP][111], [SKIP][112]) ([fdo#112022] / [i915#4070]) -> [PASS][113]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - {shard-rkl}:        [SKIP][114] ([i915#4098]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@pipe-c-single-bo:
    - {shard-rkl}:        [SKIP][116] ([i915#4070]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - {shard-rkl}:        [SKIP][118] ([fdo#111314]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][120] ([i915#2122]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [INCOMPLETE][124] ([i915#636]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-glk:          [FAIL][126] ([i915#4911]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][128] ([i915#3701]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - {shard-rkl}:        [SKIP][130] ([i915#1849]) -> [PASS][131] +13 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - {shard-rkl}:        ([SKIP][132], [SKIP][133]) ([i915#1849] / [i915#4098]) -> [PASS][134] +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - {shard-rkl}:        [SKIP][135] ([i915#3558]) -> [PASS][136] +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html

  * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format}:
    - shard-iclb:         [SKIP][137] ([i915#5176]) -> [PASS][138] +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * {igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:
    - shard-iclb:         [SKIP][139] -> [PASS][140] +2 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][141] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@cursor_mmap_gtt:
    - {shard-rkl}:        ([SKIP][143], [SKIP][144]) ([i915#1072]) -> [PASS][145]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_psr@cursor_mmap_gtt.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr@sprite_mmap_cpu:
    - {shard-rkl}:        [SKIP][148] ([i915#1072]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-forked-hang:
    - {shard-rkl}:        [SKIP][150] ([i915#1845]) -> [PASS][151] +18 similar issues
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/index.html

--===============1890601144000234447==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/xehp: Support platforms with CCS engines but no RCS</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101019/">https://patchwork.freedesktop.org/series/101019/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11321_full -&gt; Patchwork_22481_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22481_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@api_intel_allocator@fork-simple-stress-signal:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-12/igt@api_intel_allocator@fork-simple-stress-signal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-17/igt@api_intel_allocator@fork-simple-stress-signal.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_ctx_sseu@mmap-args.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_fence@nb-await.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@gen9_exec_parse@allowed-single.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@gen9_exec_parse@allowed-single.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_3d:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_3d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_3d.html">SKIP</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html">SKIP</a> ([i915#5176]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-0-5@pipe-c-hdmi-a-1-downscale-with-rotation.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@perf_pmu@busy-double-start.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-16/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-13/igt@prime_vgem@basic-read.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22481_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@gem_ctx_sseu@engines.html">SKIP</a> ([fdo#109271]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_balancer@parallel.html">DMESG-WARN</a> ([i915#5076])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#644])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl1/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl2/igt@kms_chamelium@dp-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html">SKIP</a> ([fdo#109280])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl7/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vcs0.html">WARN</a> ([i915#4055])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk4/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk8/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a>) ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-4/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> ([i915#5115]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-dg1-15/igt@i915_pm_rps@reset.html">FAIL</a> ([i915#3719]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-dg1-12/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-tglu-3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-gamma.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-gamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_color@pipe-a-legacy-gamma-reset.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_color@pipe-a-legacy-gamma-reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_concurrent@pipe-a.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_concurrent@pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x256-rapid-movement.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">SKIP</a> ([i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-bo:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html">SKIP</a> ([i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">INCOMPLETE</a> ([i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">FAIL</a> ([i915#4911]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">SKIP</a>) ([i915#1849] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_plane@pixel-format@pipe-a-planes.html">SKIP</a> ([i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_plane@pixel-format@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">SKIP</a> ([i915#5176]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-4/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a>) ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-iclb8/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11321/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22481/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-forked-hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11">SKIP</a> ([i915#1845]) -&gt; [PASS][151] +18 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1890601144000234447==--
