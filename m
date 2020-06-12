Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074351F7163
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 02:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373856E0F9;
	Fri, 12 Jun 2020 00:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7DB406E0F2;
 Fri, 12 Jun 2020 00:31:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76C84A0BD0;
 Fri, 12 Jun 2020 00:31:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jun 2020 00:31:53 -0000
Message-ID: <159192191345.21338.14949694953932886840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611180421.23262-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611180421.23262-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Leave_vma_intact_as_they_are_discarded?=
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

Series: drm/i915: Leave vma intact as they are discarded
URL   : https://patchwork.freedesktop.org/series/78233/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8618_full -> Patchwork_17930_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17930_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@wait-wedge-10ms:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +28 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl3/igt@gem_eio@wait-wedge-10ms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl4/igt@gem_eio@wait-wedge-10ms.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@gem_mmap_wc@write-cpu-read-wc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl3/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#151] / [i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +12 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#1928])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb8/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb2/igt@perf@blocking-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb7/igt@perf@blocking-parameterized.html
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-hsw2/igt@perf@blocking-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-hsw8/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb5/igt@perf_pmu@module-unload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb8/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-busy-all:
    - shard-snb:          [TIMEOUT][37] ([i915#1958]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-snb2/igt@gem_exec_fence@basic-busy-all.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-snb5/igt@gem_exec_fence@basic-busy-all.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [DMESG-WARN][39] ([i915#95]) -> [PASS][40] +24 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][41] ([i915#402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb1/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-tglb1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][43] ([i915#151] / [i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [INCOMPLETE][45] ([i915#1823]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb7/igt@i915_selftest@perf@request.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-tglb5/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [FAIL][47] ([i915#1119]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl7/igt@kms_color@pipe-c-ctm-0-25.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl1/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +9 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][57] ([i915#1928]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [FAIL][59] ([i915#49]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][61] ([i915#1188]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [DMESG-WARN][67] ([i915#1982]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl8/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl7/igt@kms_vblank@pipe-c-wait-busy-hang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][69] ([i915#1958]) -> [FAIL][70] ([i915#1930])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-apl:          [INCOMPLETE][71] ([i915#1635] / [i915#1958] / [i915#95]) -> [INCOMPLETE][72] ([i915#1635] / [i915#1958])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][73] ([i915#1515]) -> [WARN][74] ([i915#1515])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-snb:          [TIMEOUT][75] ([i915#1958]) -> [SKIP][76] ([fdo#109271] / [fdo#111827])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-snb2/igt@kms_chamelium@hdmi-hpd-storm-disable.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-snb5/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][77] ([fdo#110321] / [i915#95]) -> [TIMEOUT][78] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl6/igt@kms_content_protection@atomic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][79] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][80] ([i915#1319] / [i915#1635]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][81] ([i915#1319] / [i915#1958]) -> [TIMEOUT][82] ([i915#1319]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl4/igt@kms_content_protection@legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][83] ([i915#1319] / [i915#1635]) -> [FAIL][84] ([fdo#110321])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl8/igt@kms_content_protection@lic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl4/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][85] ([i915#1319]) -> [TIMEOUT][86] ([i915#1319] / [i915#1958])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl2/igt@kms_content_protection@lic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          [DMESG-FAIL][87] ([i915#49] / [i915#95]) -> [FAIL][88] ([i915#49])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
    - shard-snb:          [TIMEOUT][89] ([i915#1958]) -> [SKIP][90] ([fdo#109271]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#93] / [i915#95]) -> [DMESG-WARN][92] ([i915#180] / [i915#93] / [i915#95])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][94] ([fdo#108145] / [i915#1982])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [DMESG-FAIL][95] ([i915#95]) -> [FAIL][96] ([i915#1542])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl1/igt@perf@polling-parameterized.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/shard-apl8/igt@perf@polling-parameterized.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8618 -> Patchwork_17930

  CI-20190529: 20190529
  CI_DRM_8618: 88841e30e7f8c60ff464be277e5b8fef49ebaea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5703: c33471b4aa0a0ae9dd42202048e7037a661e0574 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17930: e229d0849fb77a86f00729119a1fb18ae59778b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17930/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
