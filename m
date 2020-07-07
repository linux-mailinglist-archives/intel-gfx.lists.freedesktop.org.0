Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D35216501
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 06:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E68CA6E500;
	Tue,  7 Jul 2020 04:03:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 31AAD6E4FF;
 Tue,  7 Jul 2020 04:03:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32CA9A47E6;
 Tue,  7 Jul 2020 04:03:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 07 Jul 2020 04:03:38 -0000
Message-ID: <159409461817.7663.18420170144162240658@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706234337.124814-1-jose.souza@intel.com>
In-Reply-To: <20200706234337.124814-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/2=5D_drm/i915=3A_Initial_implementa?=
 =?utf-8?q?tion_of_PSR2_selective_fetch_=28rev2=29?=
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

Series: series starting with [v3,1/2] drm/i915: Initial implementation of PSR2 selective fetch (rev2)
URL   : https://patchwork.freedesktop.org/series/79172/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18092_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18092_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_exec_create@madvise.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-glk2/igt@gem_exec_create@madvise.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl1/igt@gem_unfence_active_buffers.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl3/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1928])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1635] / [i915#95]) +12 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([i915#668]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@perf_pmu@module-unload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb7/igt@perf_pmu@module-unload.html

  * igt@template@b:
    - shard-snb:          [PASS][23] -> [TIMEOUT][24] ([i915#1958] / [i915#2119]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@template@b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-snb5/igt@template@b.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][25] ([i915#1528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [DMESG-WARN][27] ([i915#118] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [DMESG-WARN][29] ([i915#1635] / [i915#95]) -> [PASS][30] +12 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl2/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-kbl:          [DMESG-WARN][31] ([i915#93] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][33] ([i915#118] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][35] ([i915#750]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][37] ([i915#54]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][41] ([i915#1185]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-iclb4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-tglb:         [FAIL][43] ([i915#1928]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][47] ([i915#46]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][51] ([i915#456]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-skl:          [FAIL][55] ([i915#53]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_vblank@pipe-b-query-idle.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-skl3/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][63] ([i915#1820]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][65] ([i915#1930]) -> [TIMEOUT][66] ([i915#1958] / [i915#2119])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827]) -> [SKIP][68] ([fdo#109271] / [fdo#111827] / [i915#1635]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][69] ([fdo#110321] / [i915#95]) -> [TIMEOUT][70] ([i915#1319] / [i915#1958] / [i915#2119])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_content_protection@atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-kbl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +8 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][73] ([fdo#109271]) -> [TIMEOUT][74] ([i915#1958] / [i915#2119]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-apl:          [SKIP][75] ([fdo#109271] / [i915#1635]) -> [SKIP][76] ([fdo#109271]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl6/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][77], [FAIL][78]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> ([FAIL][79], [FAIL][80]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl1/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/shard-apl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8708 -> Patchwork_18092

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18092: 6e2202a55aaf5c1edcea646b49d72f8f60358600 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18092/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
