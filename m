Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AF420F75A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 16:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FF56E2A0;
	Tue, 30 Jun 2020 14:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBD8F6E2B6;
 Tue, 30 Jun 2020 14:37:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E967EA47DF;
 Tue, 30 Jun 2020 14:37:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Tue, 30 Jun 2020 14:37:41 -0000
Message-ID: <159352786195.22703.12045524884155621510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200629200609.91058-1-jose.souza@intel.com>
In-Reply-To: <20200629200609.91058-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Add_new_PCI_ids?=
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

Series: drm/i915/ehl: Add new PCI ids
URL   : https://patchwork.freedesktop.org/series/78910/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8677_full -> Patchwork_18038_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18038_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18038_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18038_full:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_mmap_coherency@read:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb5/igt@prime_mmap_coherency@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb1/igt@prime_mmap_coherency@read.html

  
Known issues
------------

  Here are the changes found in Patchwork_18038_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#454])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198] / [i915#2110])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl1/igt@i915_selftest@mock@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl2/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl1/igt@i915_suspend@forcewake.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl7/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#93] / [i915#95]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +10 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1635] / [i915#95]) +18 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#128])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb6/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb5/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([i915#155])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#198])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-farfromfence:
    - shard-tglb:         [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb6/igt@kms_frontbuffer_tracking@psr-farfromfence.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb5/igt@kms_frontbuffer_tracking@psr-farfromfence.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1188]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_prime@basic-crc@second-to-first:
    - shard-kbl:          [PASS][35] -> [DMESG-FAIL][36] ([i915#95])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl3/igt@kms_prime@basic-crc@second-to-first.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl3/igt@kms_prime@basic-crc@second-to-first.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_cs_tlb@engines@vecs0:
    - shard-skl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl5/igt@gem_cs_tlb@engines@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl3/igt@gem_cs_tlb@engines@vecs0.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-apl:          [DMESG-WARN][41] ([i915#1635] / [i915#95]) -> [PASS][42] +20 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl2/igt@gem_exec_nop@basic-parallel.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][43] ([i915#118] / [i915#95]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-glk4/igt@gem_exec_whisper@basic-fds-priority-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][45] ([i915#198]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl4/igt@i915_pm_dc@dc5-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl8/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl7/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-glk1/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][51] ([i915#54]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][53] ([i915#96]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56] +3 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-snb1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-snb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][57] ([i915#1928]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][59] ([i915#1928]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-kbl:          [DMESG-WARN][61] ([i915#93] / [i915#95]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][67] ([fdo#108145] / [i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-tglb:         [DMESG-WARN][71] ([i915#402]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-tglb8/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-tglb3/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +7 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [FAIL][75] ([i915#1542]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb4/igt@perf@blocking-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-iclb1/igt@perf@blocking-parameterized.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][77] ([i915#1820]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl6/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-apl:          [SKIP][79] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][80] ([fdo#109271] / [fdo#111827])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          [SKIP][81] ([fdo#109271] / [fdo#111827]) -> [SKIP][82] ([fdo#109271] / [fdo#111827] / [i915#1635])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180] / [i915#93] / [i915#95]) -> [DMESG-WARN][84] ([i915#93] / [i915#95])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][85] ([fdo#109349]) -> [DMESG-WARN][86] ([i915#1226])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-apl:          [SKIP][87] ([fdo#109271] / [i915#1635]) -> [SKIP][88] ([fdo#109271]) +7 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-apl:          [SKIP][89] ([fdo#109271]) -> [SKIP][90] ([fdo#109271] / [i915#1635]) +5 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl1/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][91] ([fdo#108145] / [i915#1982]) -> [DMESG-WARN][92] ([i915#1982])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#716]) -> ([FAIL][96], [FAIL][97]) ([fdo#109271] / [i915#1635] / [i915#716])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl7/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl4/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8677/shard-apl8/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl7/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/shard-apl4/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8677 -> Patchwork_18038

  CI-20190529: 20190529
  CI_DRM_8677: 47bc281ce35e7872ee04238b2f5e81aeeeb2337b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5718: af1ef32bfae90bcdbaf1b5d84c61ff4e04368505 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18038: 8df9867d9a35c7d544a36e580c070bb46cf86479 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18038/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
