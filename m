Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298601F74B2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 09:37:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090986E544;
	Fri, 12 Jun 2020 07:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A73C66E544;
 Fri, 12 Jun 2020 07:37:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A040FA0BD0;
 Fri, 12 Jun 2020 07:37:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 12 Jun 2020 07:37:19 -0000
Message-ID: <159194743962.21335.4873669568996894263@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200612023533.3611774-1-matthew.d.roper@intel.com>
In-Reply-To: <20200612023533.3611774-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?aining_RKL_patches_=28rev4=29?=
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

Series: Remaining RKL patches (rev4)
URL   : https://patchwork.freedesktop.org/series/77971/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8618_full -> Patchwork_17933_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17933_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk5/igt@gem_exec_whisper@basic-fds-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk9/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb3/igt@gem_exec_whisper@basic-forked-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-tglb5/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#95]) +12 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@gem_mmap_wc@write-cpu-read-wc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl4/igt@gem_mmap_wc@write-cpu-read-wc.html
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#93] / [i915#95]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@gem_mmap_wc@write-cpu-read-wc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl6/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk5/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][15] -> [DMESG-FAIL][16] ([i915#118] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#46])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-fences@a-edp1:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl3/igt@kms_flip@flip-vs-fences@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl8/igt@kms_flip@flip-vs-fences@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][27] -> [DMESG-FAIL][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1928])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_tiling@flip-yf-tiled:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl2/igt@kms_flip_tiling@flip-yf-tiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl4/igt@kms_flip_tiling@flip-yf-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [DMESG-FAIL][40] ([fdo#108145] / [i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][45] -> [FAIL][46] ([i915#1542])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb2/igt@perf@blocking-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-iclb7/igt@perf@blocking-parameterized.html
    - shard-hsw:          [PASS][47] -> [FAIL][48] ([i915#1542])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-hsw2/igt@perf@blocking-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-hsw6/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [DMESG-WARN][49] ([i915#95]) -> [PASS][50] +14 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][51] ([i915#151] / [i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@perf@request:
    - shard-tglb:         [INCOMPLETE][53] ([i915#1823]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-tglb7/igt@i915_selftest@perf@request.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-tglb5/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl3/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [FAIL][57] ([i915#1119]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][59] ([i915#118] / [i915#95]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][69] ([i915#1928]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-c-wait-busy-hang:
    - shard-apl:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl8/igt@kms_vblank@pipe-c-wait-busy-hang.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl8/igt@kms_vblank@pipe-c-wait-busy-hang.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-apl:          [INCOMPLETE][79] ([i915#1635] / [i915#1958] / [i915#95]) -> [INCOMPLETE][80] ([i915#1635] / [i915#1958])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@gem_exec_reloc@basic-concurrent16.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl1/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][81] ([i915#1515]) -> [WARN][82] ([i915#1515])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][83] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][85] ([i915#1319] / [i915#1958]) -> [TIMEOUT][86] ([i915#1319]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-kbl4/igt@kms_content_protection@legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-kbl3/igt@kms_content_protection@legacy.html
    - shard-apl:          [FAIL][87] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][88] ([i915#1319])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl4/igt@kms_content_protection@legacy.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][89] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][90] ([fdo#110321])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl8/igt@kms_content_protection@lic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][91] ([i915#1319] / [i915#1635]) -> [FAIL][92] ([fdo#110321])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/shard-apl3/igt@kms_content_protection@srm.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/shard-apl7/igt@kms_content_protection@srm.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8618 -> Patchwork_17933

  CI-20190529: 20190529
  CI_DRM_8618: 88841e30e7f8c60ff464be277e5b8fef49ebaea0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5703: c33471b4aa0a0ae9dd42202048e7037a661e0574 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17933: c71cca7b9a9f9b18d2511d9fbff97ba523730f8a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17933/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
