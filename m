Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37F421B8F0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 16:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582556EC73;
	Fri, 10 Jul 2020 14:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEFA46EC73;
 Fri, 10 Jul 2020 14:50:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDB85A47E0;
 Fri, 10 Jul 2020 14:50:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 10 Jul 2020 14:50:13 -0000
Message-ID: <159439261383.20500.14392847087528549240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200710115757.290984-1-matthew.auld@intel.com>
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgREcx?=
 =?utf-8?q?_LMEM_enabling?=
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

Series: DG1 LMEM enabling
URL   : https://patchwork.freedesktop.org/series/79339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8726_full -> Patchwork_18131_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18131_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18131_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18131_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@hugepages:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl4/igt@i915_selftest@mock@hugepages.html

  * igt@i915_selftest@mock@scatterlist:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-hsw8/igt@i915_selftest@mock@scatterlist.html

  
Known issues
------------

  Here are the changes found in Patchwork_18131_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-fence-in:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-kbl4/igt@gem_exec_params@invalid-fence-in.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-iclb3/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#95]) +22 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-snb:          [PASS][13] -> [TIMEOUT][14] ([i915#1958] / [i915#2119]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-hsw1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-hsw6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@basic:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-glk3/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-glk9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl3/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +8 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl3/igt@kms_plane_lowres@pipe-b-tiling-y.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl3/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#173])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb8/igt@kms_psr@no_drrs.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - shard-apl:          [DMESG-WARN][31] ([i915#1635] / [i915#95]) -> [PASS][32] +15 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@gem_ctx_param@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@gem_ctx_param@basic.html

  * igt@gem_exec_balancer@bonded-early:
    - shard-kbl:          [FAIL][33] ([i915#2079]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl3/igt@gem_exec_balancer@bonded-early.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-kbl3/igt@gem_exec_balancer@bonded-early.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][35] ([i915#402]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb2/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-tglb1/igt@i915_module_load@reload.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][37] ([i915#198] / [i915#2110]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl5/igt@i915_selftest@mock@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl4/igt@i915_selftest@mock@requests.html
    - shard-snb:          [INCOMPLETE][39] ([i915#2110] / [i915#82]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-snb4/igt@i915_selftest@mock@requests.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-snb4/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [DMESG-WARN][41] ([i915#42]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-snb6/igt@i915_suspend@forcewake.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-snb2/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +11 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl9/igt@kms_color@pipe-b-ctm-negative.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - shard-kbl:          [DMESG-WARN][45] ([i915#165]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl2/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-kbl2/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [FAIL][49] ([i915#49]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@prime_busy@hang-wait@bcs0:
    - shard-hsw:          [INCOMPLETE][57] ([i915#409]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-hsw6/igt@prime_busy@hang-wait@bcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-hsw8/igt@prime_busy@hang-wait@bcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [FAIL][59] ([i915#1930]) -> [FAIL][60] ([i915#1635] / [i915#1930])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][61] ([i915#1930]) -> [TIMEOUT][62] ([i915#1958] / [i915#2119])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-snb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          [SKIP][63] ([fdo#109271] / [i915#1699]) -> [SKIP][64] ([fdo#109271] / [i915#1635] / [i915#1699]) +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@gem_userptr_blits@process-exit-mmap@wb.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          [SKIP][65] ([fdo#109271] / [i915#658]) -> [SKIP][66] ([fdo#109271] / [i915#1635] / [i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#111827]) -> [SKIP][68] ([fdo#109271] / [fdo#111827] / [i915#1635]) +85 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][69] ([fdo#110321] / [fdo#110336]) -> [FAIL][70] ([fdo#110321] / [fdo#110336] / [i915#1635]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][71] ([fdo#110321]) -> [FAIL][72] ([fdo#110321] / [i915#1635]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@kms_content_protection@lic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          [FAIL][73] ([i915#2105]) -> [FAIL][74] ([i915#1635] / [i915#2105])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl1/igt@kms_content_protection@uevent.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@kms_content_protection@uevent.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][75] ([i915#1525]) -> [FAIL][76] ([i915#1525] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [DMESG-WARN][77] ([i915#1982]) -> [FAIL][78] ([i915#79])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][79] ([i915#1602] / [i915#1887] / [i915#456]) -> [DMESG-WARN][80] ([i915#1602] / [i915#1887])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-tglb6/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][82] ([fdo#108145] / [i915#1635] / [i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [FAIL][84] ([fdo#108145] / [i915#1635] / [i915#265]) +9 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          [FAIL][85] ([i915#265]) -> [FAIL][86] ([i915#1635] / [i915#265]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][87] ([i915#31]) -> [FAIL][88] ([i915#1635] / [i915#31])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl6/igt@kms_setmode@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          [FAIL][89] ([IGT#2]) -> [FAIL][90] ([IGT#2] / [i915#1635])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl7/igt@kms_sysfs_edid_timing.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl8/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          [SKIP][91] ([fdo#109271]) -> [SKIP][92] ([fdo#109271] / [i915#1635]) +852 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@kms_vblank@pipe-d-ts-continuation-idle.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@perf@blocking-parameterized:
    - shard-apl:          [FAIL][93] ([i915#1542]) -> [FAIL][94] ([i915#1542] / [i915#1635])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl6/igt@perf@blocking-parameterized.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl3/igt@perf@blocking-parameterized.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][95], [FAIL][96]) ([i915#1610] / [i915#1635] / [i915#2110]) -> [FAIL][97] ([i915#1635] / [i915#2110])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl4/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8726/shard-apl3/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/shard-apl2/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2079]: https://gitlab.freedesktop.org/drm/intel/issues/2079
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8726 -> Patchwork_18131

  CI-20190529: 20190529
  CI_DRM_8726: 723780498c9dd2f58b80e6b9daeaa5cd08ec8e7a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5729: a048d54f58dd70b07dbeb4541b273ec230ddb586 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18131: 88b8c65b7fbfebc4e2adf798203f27e0ce8bd7a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18131/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
