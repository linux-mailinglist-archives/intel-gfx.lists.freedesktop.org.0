Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED26B215F16
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 20:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC71E89E01;
	Mon,  6 Jul 2020 18:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6007989E01;
 Mon,  6 Jul 2020 18:55:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59FCEA363D;
 Mon,  6 Jul 2020 18:55:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal@hardline.pl>
Date: Mon, 06 Jul 2020 18:55:59 -0000
Message-ID: <159406175934.17683.4977556160127761829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706140125.172844-1-michal@hardline.pl>
In-Reply-To: <20200706140125.172844-1-michal@hardline.pl>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv3=2C1/3=5D_drm/i915=3A_Reboot_CI_if_we_ge?=
 =?utf-8?q?t_wedged_during_driver_init?=
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

Series: series starting with [v3,1/3] drm/i915: Reboot CI if we get wedged during driver init
URL   : https://patchwork.freedesktop.org/series/79160/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18086_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18086_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] ([i915#1958] / [i915#2119])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb5/igt@gem_exec_endless@dispatch@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-iclb8/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#1930])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk6/igt@gem_exec_whisper@basic-queues-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl6/igt@gem_unfence_active_buffers.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][11] -> [DMESG-FAIL][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#57])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_lease@lease-uevent:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#95]) +18 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@kms_lease@lease-uevent.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl4/igt@kms_lease@lease-uevent.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl4/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb7/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-iclb3/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  * igt@template@b:
    - shard-snb:          [PASS][29] -> [TIMEOUT][30] ([i915#1958] / [i915#2119]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@template@b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-snb4/igt@template@b.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +6 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][33] ([i915#1528]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-glk3/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-kbl:          [DMESG-WARN][37] ([i915#93] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][39] ([i915#402]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb7/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][41] ([i915#198] / [i915#2110]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@i915_selftest@mock@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][43] ([i915#118] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][45] ([i915#750]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][49] ([i915#1635] / [i915#95]) -> [PASS][50] +18 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl8/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][51] ([i915#1185]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-iclb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][55] ([i915#46]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][57] ([i915#456]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-query-idle:
    - shard-skl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_vblank@pipe-b-query-idle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-skl2/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][69] ([i915#1820]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][71] ([i915#1930]) -> [TIMEOUT][72] ([i915#1958] / [i915#2119])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#180] / [i915#93] / [i915#95])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][75] ([i915#588]) -> [SKIP][76] ([i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][77] ([fdo#109271] / [fdo#111827]) -> [SKIP][78] ([fdo#109271] / [fdo#111827] / [i915#1635]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl1/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge:
    - shard-apl:          [DMESG-FAIL][79] ([i915#1635] / [i915#70] / [i915#95]) -> [DMESG-WARN][80] ([i915#1635] / [i915#95])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl8/igt@kms_cursor_edge_walk@pipe-a-128x128-right-edge.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][81] ([fdo#109271]) -> [TIMEOUT][82] ([i915#1958] / [i915#2119]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-snb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-top-left-pipe-d-planes:
    - shard-apl:          [SKIP][83] ([fdo#109271] / [i915#1635]) -> [SKIP][84] ([fdo#109271]) +9 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl7/igt@kms_plane@plane-panning-top-left-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          [DMESG-FAIL][85] ([i915#1635] / [i915#95]) -> [FAIL][86] ([i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
    - shard-apl:          [SKIP][87] ([fdo#109271]) -> [SKIP][88] ([fdo#109271] / [i915#1635]) +12 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl8/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][89], [FAIL][90]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> ([FAIL][91], [FAIL][92]) ([fdo#109271] / [i915#1635] / [i915#2110] / [i915#716])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/shard-apl7/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
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

  * Linux: CI_DRM_8708 -> Patchwork_18086

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18086: 4b0b5628617d7c1926731ff1d631814ac9c0f23a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18086/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
