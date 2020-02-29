Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B70E1744B9
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 04:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78A496E14B;
	Sat, 29 Feb 2020 03:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87C2D6E123;
 Sat, 29 Feb 2020 03:37:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80ABDA363D;
 Sat, 29 Feb 2020 03:37:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 29 Feb 2020 03:37:08 -0000
Message-ID: <158294742849.19636.1708315224378902488@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227175147.11362-1-anshuman.gupta@intel.com>
In-Reply-To: <20200227175147.11362-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_kbuild_test_robot_build_error_=28rev2=29?=
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

Series: drm/i915: Fix kbuild test robot build error (rev2)
URL   : https://patchwork.freedesktop.org/series/73990/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8021_full -> Patchwork_16741_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16741_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#413])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#899]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +12 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109276]) +17 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][29] ([i915#1277]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-tglb8/igt@gem_exec_balancer@hang.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][31] ([fdo#109276]) -> [PASS][32] +26 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][33] ([fdo#109276] / [i915#677]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][35] ([i915#677]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_mmap_offset@clear:
    - shard-kbl:          [SKIP][39] ([fdo#109271]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@gem_mmap_offset@clear.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl3/igt@gem_mmap_offset@clear.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][43] ([i915#58] / [k.org#198133]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk2/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-iclb:         [INCOMPLETE][45] ([i915#189]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-kbl:          [INCOMPLETE][47] ([fdo#103665] / [i915#504]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@i915_selftest@live@gem_contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl3/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gtt:
    - shard-kbl:          [DMESG-FAIL][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@i915_selftest@live@gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl3/igt@i915_selftest@live@gtt.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#300]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-hsw:          [SKIP][53] ([fdo#109271]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-hsw1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-skl9/igt@kms_hdr@bpc-switch.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-apl6/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-apl4/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-glk9/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-glk2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-50-vcs1:
    - shard-kbl:          [SKIP][63] ([fdo#109271] / [fdo#112080]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@perf_pmu@busy-accuracy-50-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl3/igt@perf_pmu@busy-accuracy-50-vcs1.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +11 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [FAIL][68] ([IGT#28]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-hsw:          [DMESG-WARN][71] -> [DMESG-WARN][72] ([i915#478])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-hsw1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-hsw5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-kbl:          [SKIP][73] ([fdo#109271]) -> [SKIP][74] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8021/shard-kbl3/igt@kms_chamelium@vga-hpd-after-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/shard-kbl3/igt@kms_chamelium@vga-hpd-after-suspend.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#504]: https://gitlab.freedesktop.org/drm/intel/issues/504
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8021 -> Patchwork_16741

  CI-20190529: 20190529
  CI_DRM_8021: 98e43281da271731d056080d696c143ca7e07e35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16741: 6ee2d61a1cf42b75f585217eb909c9967d04ba0a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16741/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
