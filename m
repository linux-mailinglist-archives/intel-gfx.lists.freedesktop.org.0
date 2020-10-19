Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 188FF2930B7
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE4F6EB3A;
	Mon, 19 Oct 2020 21:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F37C6EB34;
 Mon, 19 Oct 2020 21:44:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5704FA0009;
 Mon, 19 Oct 2020 21:44:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Mon, 19 Oct 2020 21:44:05 -0000
Message-ID: <160314384535.32024.16928083103239519839@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201019175609.28715-1-jose.souza@intel.com>
In-Reply-To: <20201019175609.28715-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/fbc=3A_Implement_WA_22010751166?=
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
Content-Type: multipart/mixed; boundary="===============0285647046=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0285647046==
Content-Type: multipart/alternative;
 boundary="===============8485871852944234474=="

--===============8485871852944234474==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/fbc: Implement WA 22010751166
URL   : https://patchwork.freedesktop.org/series/82836/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9163_full -> Patchwork_18735_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18735_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18735_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18735_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@write-wait@vcs0:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw8/igt@gem_wait@write-wait@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@gem_wait@write-wait@vcs0.html

  * igt@prime_vgem@coherency-blt:
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-snb2/igt@prime_vgem@coherency-blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-snb5/igt@prime_vgem@coherency-blt.html

  
#### Warnings ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-hsw:          [WARN][5] ([i915#2283]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw2/igt@core_hotunplug@hotrebind-lateclose.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@core_hotunplug@hotrebind-lateclose.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2.html

  * spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][8] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9163_full and Patchwork_18735_full:

### New Piglit tests (3) ###

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2:
    - Statuses : 1 crash(s)
    - Exec time: [46.79] s

  * spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@vs-op-div-double-dvec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18735_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2389]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk2/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk9/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#2424])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1436] / [i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl4/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [PASS][19] -> [WARN][20] ([i915#1519])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1635] / [i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-apl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk8/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#1185])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  
#### Possible fixes ####

  * igt@api_intel_bb@render-ccs:
    - shard-tglb:         [INCOMPLETE][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb1/igt@api_intel_bb@render-ccs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb7/igt@api_intel_bb@render-ccs.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][43] ([i915#658]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb1/igt@feature_discovery@psr2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][45] ([i915#2389]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][47] ([i915#2424]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [INCOMPLETE][49] ([i915#155]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl2/igt@i915_suspend@debugfs-reader.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][51] ([i915#2521]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl4/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [INCOMPLETE][57] ([i915#198]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-primary-size-256:
    - shard-glk:          [DMESG-WARN][61] ([i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-256.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk4/igt@kms_plane_cursor@pipe-a-primary-size-256.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:
    - shard-skl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl9/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl8/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@polling:
    - shard-hsw:          [SKIP][67] ([fdo#109271]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw2/igt@perf@polling.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][69] ([i915#1542]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@perf@polling-parameterized.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][71] ([fdo#109349]) -> [DMESG-WARN][72] ([i915#1226])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [DMESG-WARN][73] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][74] ([i915#2411])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-skl:          [DMESG-FAIL][77] ([i915#1982] / [i915#31]) -> [FAIL][78] ([i915#31])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_setmode@basic.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][79] ([i915#2029] / [i915#2439]) -> [FAIL][80] ([i915#1436])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9163 -> Patchwork_18735

  CI-20190529: 20190529
  CI_DRM_9163: e984f8cbd92765a305dd322240278e0f69dbae38 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18735: 72bc219de6f039510c1d34b2d39a1d065168d127 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/index.html

--===============8485871852944234474==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/fbc: Implement WA 22010751166</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82836/">https://patchwork.freedesktop.org/series/82836/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9163_full -&gt; Patchwork_18735_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18735_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18735_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18735_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_wait@write-wait@vcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw8/igt@gem_wait@write-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@gem_wait@write-wait@vcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-snb2/igt@prime_vgem@coherency-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-snb5/igt@prime_vgem@coherency-blt.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@hotrebind-lateclose:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw2/igt@core_hotunplug@hotrebind-lateclose.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@core_hotunplug@hotrebind-lateclose.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2.html">CRASH</a></li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4 (NEW):</p>
<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9163_full and Patchwork_18735_full:</p>
<h3>New Piglit tests (3)</h3>
<ul>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat2x3-dmat4x2:</p>
<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [46.79] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-transpose-dmat4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@vs-op-div-double-dvec2:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18735_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk2/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk9/igt@gem_exec_whisper@basic-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk9/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl10/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-apl2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-apl1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk8/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk4/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb1/igt@api_intel_bb@render-ccs.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb7/igt@api_intel_bb@render-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb1/igt@feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl2/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-kbl4/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-256:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-glk6/igt@kms_plane_cursor@pipe-a-primary-size-256.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-glk4/igt@kms_plane_cursor@pipe-a-primary-size-256.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl9/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl8/igt@kms_plane_scaling@pipe-b-scaler-with-pixel-format.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-hsw2/igt@perf@polling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-hsw8/igt@perf@polling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl4/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl5/igt@kms_setmode@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl5/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9163/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18735/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9163 -&gt; Patchwork_18735</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9163: e984f8cbd92765a305dd322240278e0f69dbae38 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5822: b4bcf05cb9839037128905deda7146434155cc41 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18735: 72bc219de6f039510c1d34b2d39a1d065168d127 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8485871852944234474==--

--===============0285647046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0285647046==--
