Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E50A81F6F74
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 23:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AE289B84;
	Thu, 11 Jun 2020 21:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 173DA89B60;
 Thu, 11 Jun 2020 21:28:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10F1EA3C0D;
 Thu, 11 Jun 2020 21:28:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Jun 2020 21:28:21 -0000
Message-ID: <159191090103.22716.15789735040349013412@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200611160529.9558-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200611160529.9558-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_gen3_relocs_harder=2C_again?=
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

Series: drm/i915/gt: Flush gen3 relocs harder, again
URL   : https://patchwork.freedesktop.org/series/78230/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8618_full -> Patchwork_17928_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17928_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk1/igt@gem_exec_whisper@basic-fds-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-glk8/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#95]) +21 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@gem_mmap_wc@write-cpu-read-wc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl1/igt@gem_mmap_wc@write-cpu-read-wc.html
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#93] / [i915#95]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@gem_mmap_wc@write-cpu-read-wc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl4/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][7] -> [DMESG-FAIL][8] ([i915#118] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl3/igt@kms_flip@flip-vs-fences@a-edp1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl1/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][19] -> [DMESG-FAIL][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl2/igt@kms_flip_tiling@flip-yf-tiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl7/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#49])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [DMESG-FAIL][26] ([fdo#108145] / [i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-none:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-tglb1/igt@kms_plane_multiple@atomic-pipe-c-tiling-none.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_await@wide-contexts:
    - shard-kbl:          [DMESG-WARN][31] ([i915#93] / [i915#95]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl4/igt@gem_exec_await@wide-contexts.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-apl:          [DMESG-WARN][33] ([i915#95]) -> [PASS][34] +23 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl1/igt@gem_exec_reloc@basic-wc-read.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl3/igt@gem_exec_reloc@basic-wc-read.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][35] ([i915#402]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb1/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-tglb3/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][37] ([i915#151] / [i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [INCOMPLETE][39] ([i915#1823]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb7/igt@i915_selftest@perf@request.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-tglb8/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-apl:          [FAIL][45] ([i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][47] ([i915#79]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][51] ([i915#1928]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][53] ([i915#1188]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-top-left-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl1/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl3/igt@kms_plane@plane-panning-top-left-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl8/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl6/igt@kms_vblank@pipe-c-wait-busy-hang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][63] ([i915#1635] / [i915#1958] / [i915#95]) -> [INCOMPLETE][64] ([i915#1635] / [i915#1958])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][65] ([i915#1515]) -> [WARN][66] ([i915#1515])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][67] ([fdo#110321] / [i915#95]) -> [TIMEOUT][68] ([i915#1319])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl6/igt@kms_content_protection@atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][69] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][71] ([i915#1319] / [i915#1958]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl4/igt@kms_content_protection@legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-kbl3/igt@kms_content_protection@legacy.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][74] ([fdo#108145] / [i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
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

  * Linux: CI_DRM_8618 -> Patchwork_17928

  CI-20190529: 20190529
  CI_DRM_8618: 88841e30e7f8c60ff464be277e5b8fef49ebaea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5703: c33471b4aa0a0ae9dd42202048e7037a661e0574 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17928: c941a56c4805f053450c96e0c4366f90289b14d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17928/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
