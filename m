Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239552676A8
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 02:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89A6A6E0A1;
	Sat, 12 Sep 2020 00:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8788E6E0A1;
 Sat, 12 Sep 2020 00:02:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76965A882F;
 Sat, 12 Sep 2020 00:02:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Sat, 12 Sep 2020 00:02:26 -0000
Message-ID: <159986894645.6919.16713076943973655323@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200911221158.4700-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=2C_rkl=3A_Make_Wa=5F1606700617/22010271021_permanent?=
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
Content-Type: multipart/mixed; boundary="===============0540476516=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0540476516==
Content-Type: multipart/alternative;
 boundary="===============2487991452466815097=="

--===============2487991452466815097==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl, rkl: Make Wa_1606700617/22010271021 permanent
URL   : https://patchwork.freedesktop.org/series/81608/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9002_full -> Patchwork_18484_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18484_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][3] -> [TIMEOUT][4] ([i915#1958] / [i915#2424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][7] -> [WARN][8] ([i915#1519])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#151])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1635] / [i915#2278])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-apl1/igt@i915_selftest@mock@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-apl2/igt@i915_selftest@mock@contexts.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#300])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#198])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-iclb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#1542])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-kbl:          [FAIL][37] ([i915#2374]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][39] ([i915#2389]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-tglb:         [INCOMPLETE][43] ([i915#750]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb3/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][47] ([i915#96]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-kbl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][55] ([i915#2055]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@kms_hdr@bpc-switch.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [FAIL][61] ([i915#1036]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk6/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk9/igt@kms_setmode@basic.html

  * igt@prime_mmap@test_refcounting:
    - shard-skl:          [DMESG-WARN][69] ([i915#1982]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@prime_mmap@test_refcounting.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@prime_mmap@test_refcounting.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][71] ([i915#588]) -> [SKIP][72] ([i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [INCOMPLETE][73] ([i915#155] / [i915#636]) -> [DMESG-WARN][74] ([i915#180])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl3/igt@i915_suspend@forcewake.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-FAIL][75] ([i915#1982]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][78] ([i915#1982])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][80] ([fdo#108145] / [i915#1982]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][81], [FAIL][82]) ([i915#1436] / [i915#1611] / [i915#1814] / [i915#2029]) -> [FAIL][83] ([i915#1436])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl8/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl6/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2374]: https://gitlab.freedesktop.org/drm/intel/issues/2374
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9002 -> Patchwork_18484

  CI-20190529: 20190529
  CI_DRM_9002: 575f7eba4c8b1a1f5bf95ca2e9e7bee055fea079 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5781: 66766dd7cd99465d977ac07db8a2413dbbfe8d84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18484: c643941caadff5070f14e0b2fc5c64600cb1c0fe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/index.html

--===============2487991452466815097==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl, rkl: Make Wa_1606700617/22010271021 permanent</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81608/">https://patchwork.freedesktop.org/series/81608/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9002_full -&gt; Patchwork_18484_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18484_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk2/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-apl1/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-apl2/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@bcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2374">i915#2374</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk8/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb3/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk6/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk1/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl6/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl2/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1036">i915#1036</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-glk6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-glk9/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_refcounting:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@prime_mmap@test_refcounting.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@prime_mmap@test_refcounting.html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-kbl3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-kbl7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl3/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9002/shard-skl8/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18484/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9002 -&gt; Patchwork_18484</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9002: 575f7eba4c8b1a1f5bf95ca2e9e7bee055fea079 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5781: 66766dd7cd99465d977ac07db8a2413dbbfe8d84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18484: c643941caadff5070f14e0b2fc5c64600cb1c0fe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============2487991452466815097==--

--===============0540476516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0540476516==--
