Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 950D12128D7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 18:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0218987A;
	Thu,  2 Jul 2020 16:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E69C58970E;
 Thu,  2 Jul 2020 16:00:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0832A0019;
 Thu,  2 Jul 2020 16:00:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Jul 2020 16:00:33 -0000
Message-ID: <159370563388.5655.11013731966483240400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200702095219.963-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200702095219.963-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Harden_the_hear?=
 =?utf-8?q?tbeat_against_a_stuck_driver?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Harden the heartbeat against a stuck driver
URL   : https://patchwork.freedesktop.org/series/79042/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8693_full -> Patchwork_18067_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18067_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@fds:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-glk7/igt@gem_exec_parallel@engines@fds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-glk7/igt@gem_exec_parallel@engines@fds.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-glk6/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#1515])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-pixel-format:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +24 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl7/igt@kms_ccs@pipe-a-bad-pixel-format.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl7/igt@kms_ccs@pipe-a-bad-pixel-format.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +10 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl10/igt@kms_color@pipe-c-ctm-0-25.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#300])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-kbl4/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-kbl7/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb1/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1928])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl7/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#1820])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-kbl7/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-glk:          [INCOMPLETE][35] ([i915#58] / [k.org#198133]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-glk7/igt@gem_exec_flush@basic-wb-rw-default.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-glk4/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][37] ([i915#118] / [i915#95]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-glk4/igt@gem_exec_whisper@basic-queues-forked.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-iclb7/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-iclb6/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl9/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][43] ([i915#1149]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb8/igt@kms_color@pipe-a-gamma.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb2/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - shard-tglb:         [DMESG-WARN][45] ([i915#402]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb1/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][47] ([i915#1635] / [i915#95]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145] / [i915#265]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-snb1/igt@kms_rmfb@rmfb-ioctl.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-snb2/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl1/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl6/igt@kms_setmode@basic.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [FAIL][63] ([i915#1731]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-glk:          [INCOMPLETE][65] ([i915#1958] / [i915#58] / [k.org#198133]) -> [TIMEOUT][66] ([i915#1958] / [i915#2119])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-glk8/igt@gem_exec_reloc@basic-concurrent16.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-glk5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [i915#1635]) -> [SKIP][68] ([fdo#109271]) +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl4/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl8/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-tglb:         [FAIL][69] ([i915#1149] / [i915#315]) -> [DMESG-FAIL][70] ([i915#1149] / [i915#402])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb1/igt@kms_color@pipe-a-ctm-0-75.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb2/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-apl:          [SKIP][71] ([fdo#109271]) -> [SKIP][72] ([fdo#109271] / [i915#1635]) +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][73] ([i915#1982] / [i915#402]) -> [DMESG-WARN][74] ([i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [DMESG-WARN][75] ([i915#1982]) -> [FAIL][76] ([fdo#108145] / [i915#265])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant:
    - shard-apl:          [DMESG-FAIL][77] ([fdo#108145] / [i915#1635] / [i915#1982] / [i915#95]) -> [DMESG-FAIL][78] ([fdo#108145] / [i915#1635] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-vs-premult-vs-constant.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][79], [FAIL][80], [FAIL][81]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][82] ([i915#1635] / [i915#2110])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl1/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-apl8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-apl2/igt@runner@aborted.html
    - shard-tglb:         [FAIL][83] ([i915#2110]) -> [FAIL][84] ([i915#1764] / [i915#2110])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8693/shard-tglb6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/shard-tglb3/igt@runner@aborted.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8693 -> Patchwork_18067

  CI-20190529: 20190529
  CI_DRM_8693: 878d924ea8a8c4c8812215d881f3bd70b3d4f2ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5720: f35053d4b6d7bbcf6505ef67a8bd56acc7fb2eb2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18067: 003acb5bb17450dfe3253238bba2290603a24346 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18067/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
