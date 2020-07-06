Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7AE215781
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 14:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A09B89EB7;
	Mon,  6 Jul 2020 12:43:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 255B589EAC;
 Mon,  6 Jul 2020 12:43:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F1F1A47EA;
 Mon,  6 Jul 2020 12:43:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal@hardline.pl>
Date: Mon, 06 Jul 2020 12:43:53 -0000
Message-ID: <159403943312.17682.10764304527748639109@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200706104953.139261-1-michal@hardline.pl>
In-Reply-To: <20200706104953.139261-1-michal@hardline.pl>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Reboot_CI_if_we_ge?=
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

Series: series starting with [v2,1/2] drm/i915: Reboot CI if we get wedged during driver init
URL   : https://patchwork.freedesktop.org/series/79151/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8708_full -> Patchwork_18083_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18083_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18083_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18083_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb5/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-hsw:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw4/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-hsw2/igt@i915_module_load@reload-with-fault-injection.html

  
Known issues
------------

  Here are the changes found in Patchwork_18083_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@q-out-order@vecs0:
    - shard-iclb:         [PASS][5] -> [DMESG-WARN][6] ([i915#1226])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb7/igt@gem_ctx_shared@q-out-order@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-iclb2/igt@gem_ctx_shared@q-out-order@vecs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1930])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@gem_exec_reloc@basic-concurrent0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_unfence_active_buffers:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#93] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_unfence_active_buffers.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl3/igt@gem_unfence_active_buffers.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-kbl:          [PASS][13] -> [INCOMPLETE][14] ([i915#1373])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([i915#1373] / [i915#1635])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#58] / [k.org#198133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][19] -> [INCOMPLETE][20] ([i915#82])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#926])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb8/igt@i915_module_load@reload-with-fault-injection.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([i915#151])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw6/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-hsw4/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][25] -> [DMESG-FAIL][26] ([i915#118] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#79])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#46])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack:
    - shard-tglb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [SKIP][36] ([i915#668]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_lease@lease-uevent:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1635] / [i915#95]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@kms_lease@lease-uevent.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl4/igt@kms_lease@lease-uevent.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl10/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@template@b:
    - shard-snb:          [PASS][45] -> [TIMEOUT][46] ([i915#1958] / [i915#2119]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@template@b.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-snb2/igt@template@b.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][47] ([i915#1528]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_fence@parallel@vcs0:
    - shard-glk:          [DMESG-WARN][49] ([i915#118] / [i915#95]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk4/igt@gem_exec_fence@parallel@vcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk1/igt@gem_exec_fence@parallel@vcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-skl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl7/igt@gem_mmap_gtt@cpuset-big-copy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-apl:          [DMESG-WARN][53] ([i915#1635] / [i915#95]) -> [PASS][54] +10 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl7/igt@gem_userptr_blits@unsync-unmap-after-close.html
    - shard-kbl:          [DMESG-WARN][55] ([i915#93] / [i915#95]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][57] ([i915#198] / [i915#2110]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@i915_selftest@mock@requests.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl5/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement:
    - shard-tglb:         [INCOMPLETE][61] ([i915#750]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-128x128-rapid-movement.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-iclb:         [INCOMPLETE][63] ([i915#1185]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@kms_fbcon_fbt@psr-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-iclb3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][67] ([i915#46]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-tglb:         [INCOMPLETE][71] ([i915#456]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb2/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][73] ([i915#1982]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][75] ([i915#1188]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-b:
    - shard-skl:          [FAIL][77] ([i915#53]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl10/igt@kms_pipe_crc_basic@hang-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@perf_pmu@semaphore-busy@rcs0:
    - shard-kbl:          [FAIL][81] ([i915#1820]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@perf_pmu@semaphore-busy@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [FAIL][83] ([i915#1930]) -> [TIMEOUT][84] ([i915#1958] / [i915#2119])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [INCOMPLETE][85] ([i915#1958] / [i915#58] / [k.org#198133]) -> [TIMEOUT][86] ([i915#1958] / [i915#2119])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-glk3/igt@gem_exec_reloc@basic-concurrent16.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-glk7/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][87] ([i915#588]) -> [SKIP][88] ([i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-apl:          [SKIP][89] ([fdo#109271] / [fdo#111827]) -> [SKIP][90] ([fdo#109271] / [fdo#111827] / [i915#1635]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl7/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [DMESG-FAIL][91] ([fdo#110321] / [i915#95]) -> [TIMEOUT][92] ([i915#1319] / [i915#2119])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@kms_content_protection@atomic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl7/igt@kms_content_protection@atomic.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-apl:          [SKIP][93] ([fdo#109271]) -> [SKIP][94] ([fdo#109271] / [i915#1635]) +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-snb:          [SKIP][95] ([fdo#109271]) -> [TIMEOUT][96] ([i915#1958] / [i915#2119]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:
    - shard-apl:          [SKIP][97] ([fdo#109271] / [i915#1635]) -> [SKIP][98] ([fdo#109271]) +5 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][99] ([i915#1436] / [i915#2110]) -> ([FAIL][100], [FAIL][101]) ([i915#142] / [i915#1436] / [i915#2110])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-hsw7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-hsw7/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-hsw2/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][102], [FAIL][103]) ([i915#1436] / [i915#1784] / [i915#2110]) -> ([FAIL][104], [FAIL][105]) ([i915#1423] / [i915#1436] / [i915#1784] / [i915#2110] / [i915#92])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl2/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-kbl1/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][106], [FAIL][107]) ([i915#1610] / [i915#1635] / [i915#2110] / [i915#637]) -> ([FAIL][108], [FAIL][109]) ([i915#1423] / [i915#1635] / [i915#2110])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl2/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-apl3/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl6/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-apl8/igt@runner@aborted.html
    - shard-tglb:         [FAIL][110] ([i915#2110]) -> ([FAIL][111], [FAIL][112]) ([i915#1764] / [i915#1852] / [i915#2110])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-tglb6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][113], [FAIL][114]) ([i915#2110] / [i915#69]) -> [FAIL][115] ([i915#1423] / [i915#69])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl8/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8708/shard-skl2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
  [i915#1852]: https://gitlab.freedesktop.org/drm/intel/issues/1852
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#637]: https://gitlab.freedesktop.org/drm/intel/issues/637
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8708 -> Patchwork_18083

  CI-20190529: 20190529
  CI_DRM_8708: 170e94a1430fd0a4f0841ad0f7366904d52e49be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5722: 9985cf23e9db9557bc7d714f5b72602e427497d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18083: 18322b2d5f896d5de04247b21be750e5a76aebc7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18083/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
