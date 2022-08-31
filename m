Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E285A8148
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 17:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C9910E436;
	Wed, 31 Aug 2022 15:31:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1855A10E436;
 Wed, 31 Aug 2022 15:31:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DADAAADDC;
 Wed, 31 Aug 2022 15:31:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6573681833957877806=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Wed, 31 Aug 2022 15:31:54 -0000
Message-ID: <166195991404.4259.3643549170708031447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220825222315.58696-1-rodrigo.vivi@intel.com>
In-Reply-To: <20220825222315.58696-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/slpc=3A_Set_rps=27_min_and_max_frequencies_even_with_SLPC?=
 =?utf-8?b?LiAocmV2Nik=?=
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

--===============6573681833957877806==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/slpc: Set rps' min and max frequencies even with SLPC. (rev6)
URL   : https://patchwork.freedesktop.org/series/107766/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12050_full -> Patchwork_107766v6_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-rkl 

Known issues
------------

  Here are the changes found in Patchwork_107766v6_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-tglb:         NOTRUN -> [SKIP][1] ([fdo#109314])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#5784])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb3/igt@gem_eio@reset-stress.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb2/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][5] -> [TIMEOUT][6] ([i915#3070])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][7] ([i915#3354])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#4525]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][12] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_lmem_swapping@massive:
    - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][17] ([i915#2658])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][18] ([i915#2658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_pwrite@basic-exhaustion.html
    - shard-kbl:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +147 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#3297])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][23] ([i915#2724])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          NOTRUN -> [FAIL][24] ([i915#3318])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1937])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111614]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615] / [i915#3689])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +12 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#6095])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@vga-frame-dump:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@kms_chamelium@vga-frame-dump.html

  * igt@kms_chamelium@vga-hpd:
    - shard-snb:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][39] ([i915#180])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#2672]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#3555]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#6497])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271]) +276 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#1188])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][47] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#658]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#533])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#2530])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@prime_nv_api@nv_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109291])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@prime_nv_api@nv_self_import.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +184 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl1/igt@prime_nv_pcopy@test2.html

  * igt@sysfs_clients@create:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2994]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-10:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#2994])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@sysfs_clients@split-10.html

  * igt@sysfs_clients@split-50:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2994])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglb:         [INCOMPLETE][60] -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb2/igt@device_reset@unbind-reset-rebind.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_busy@close-race:
    - shard-snb:          [TIMEOUT][62] ([i915#5748]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-snb4/igt@gem_busy@close-race.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-snb4/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +5 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][66] ([i915#3063]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglu-2/igt@gem_eio@unwedge-stress.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglu-2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-iclb:         [SKIP][68] ([i915#4525]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][70] ([i915#2842]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         [FAIL][74] ([i915#3743]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_cursor_legacy@cursor-vs-flip@legacy:
    - shard-iclb:         [FAIL][76] ([i915#5072]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][80] ([i915#4525]) -> [FAIL][81] ([i915#6117])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          [DMESG-FAIL][82] ([i915#180]) -> [FAIL][83] ([i915#1188])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][84] ([i915#658]) -> [SKIP][85] ([i915#2920])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][86] ([fdo#111068] / [i915#658]) -> [SKIP][87] ([i915#2920])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][95], [FAIL][96], [FAIL][97]) ([i915#3002] / [i915#4312] / [i915#5257])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12050 -> Patchwork_107766v6

  CI-20190529: 20190529
  CI_DRM_12050: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107766v6: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/index.html

--===============6573681833957877806==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/slpc: Set rps&#39; min and max freq=
uencies even with SLPC. (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107766/">https://patchwork.freedesktop.org/series/107766/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107766v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12050_full -&gt; Patchwork_107766v=
6_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-rkl </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107766v6_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_ctx_persistence@engines=
-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1099">i915#1099</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-tglb3/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-t=
glb2/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12050/shard-iclb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-=
iclb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/shard-snb5/igt@gem_eio@unwedge-stress.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3354"=
>i915#3354</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07766v6/shard-iclb8/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/=
shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@gem_exec_fair@basic-none-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6=
/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +3 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">=
i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_pwrite@basic-exhaustion.=
html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2658">i915#2658</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_pwrite@basic-exhaustion.=
html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2658">i915#2658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_render_copy@x-tiled-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@gem_userptr_blits@vma-merge.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@kms_ccs@pipe-a-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_ccs@pipe-a-random-ccs-=
data-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-d=
ata-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +12 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_ccs@pipe-c-crc-primary=
-basic-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_chamelium@hdmi-audio-e=
did.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@kms_chamelium@vga-frame-dum=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-snb6/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_color_chamelium@ctm-red=
-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107766v6/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl2/igt@kms_flip@flip-vs-suspend-in=
terruptible@b-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-iclb8/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6497">i915#6497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-snb5/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +276 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7766v6/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl7/igt@kms_plane_alpha_blend@pipe-=
a-constant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl8/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@kms_psr2_su@page_flip-xrgb8=
888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/shar=
d-iclb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_setmode@clone-exclusiv=
e-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl1/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@nouveau_crc@ctx-flip-thres=
hold-reset-after-capture.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@prime_nv_api@nv_self_impor=
t.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl1/igt@prime_nv_pcopy@test2.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a>) +184 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@sysfs_clients@split-10.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/299=
4">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-apl3/igt@sysfs_clients@split-50.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-tglb2/igt@device_reset@unbind-reset-rebind.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107766v6/shard-tglb6/igt@device_reset@unbind-reset-rebind.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-snb4/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5748">i915#5748</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v6/=
shard-snb4/igt@gem_busy@close-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107766v6/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.h=
tml">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-tglu-2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1077=
66v6/shard-tglu-2/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107766v6/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7766v6/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-apl1/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7766v6/shard-apl2/igt@i915_suspend@sysfs-reader.html">PASS</a> +5 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107766v6/shard-tglb6/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@legacy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@legacy.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072"=
>i915#5072</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107766v6/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip@legacy.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10=
9441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107766v6/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> =
+2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_107766v6/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107766v6/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb8/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107766v6/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12050/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107766v6/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12050/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12050/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12050/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12050/shard-kbl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12050/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107766v=
6/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_107766v6/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107766v6/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)<=
/li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12050 -&gt; Patchwork_107766v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12050: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6638: 9338ab3ec085292817ab1e74d1f2fb90b6a98332 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107766v6: 1be2e4f9c0376496419ad26a35c516de050f746d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6573681833957877806==--
