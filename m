Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 338BD239FB0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 08:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9946E20E;
	Mon,  3 Aug 2020 06:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BAA36E20D;
 Mon,  3 Aug 2020 06:41:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73352A7DFD;
 Mon,  3 Aug 2020 06:41:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pankaj Bharadiya" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 03 Aug 2020 06:41:31 -0000
Message-ID: <159643689143.19293.18222267057769897422@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200803042953.7626-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200803042953.7626-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_drm_scaling_filter_property_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============0119749808=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0119749808==
Content-Type: multipart/alternative;
 boundary="===============4796641667943665982=="

--===============4796641667943665982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce drm scaling filter property (rev7)
URL   : https://patchwork.freedesktop.org/series/73883/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8832_full -> Patchwork_18296_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18296_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18296_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18296_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_mmap_write_crc@main:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_mmap_write_crc@main.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk3/igt@kms_mmap_write_crc@main.html

  
Known issues
------------

  Here are the changes found in Patchwork_18296_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1181] / [i915#1635])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#79])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [PASS][15] -> [INCOMPLETE][16] ([i915#2055])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2122])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#49])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_setmode@basic.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb4/igt@perf@blocking-parameterized.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb3/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * igt@i915_module_load@reload:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl4/igt@i915_module_load@reload.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [DMESG-WARN][39] ([i915#78]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-glk:          [FAIL][41] ([i915#54]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [INCOMPLETE][43] ([i915#1635]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-iclb:         [DMESG-WARN][45] ([i915#128]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb6/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [FAIL][47] ([i915#57]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1:
    - shard-kbl:          [DMESG-WARN][49] -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1:
    - shard-kbl:          [DMESG-WARN][51] ([i915#165]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][53] ([i915#2122]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +7 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][61] ([fdo#108145] / [i915#1982]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145] / [i915#265]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk5/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk8/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-iclb:         [INCOMPLETE][69] ([i915#1958]) -> [TIMEOUT][70] ([i915#1958])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb6/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [TIMEOUT][71] ([i915#1319] / [i915#1958]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_content_protection@lic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_content_protection@lic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1181]: https://gitlab.freedesktop.org/drm/intel/issues/1181
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8832 -> Patchwork_18296

  CI-20190529: 20190529
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18296: c7a29cfbc920df16ad17fbf6b7d06131bacd732a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/index.html

--===============4796641667943665982==
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
<tr><td><b>Series:</b></td><td>Introduce drm scaling filter property (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/73883/">https://patchwork.freedesktop.org/series/73883/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8832_full -&gt; Patchwork_18296_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18296_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18296_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18296_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_mmap_write_crc@main:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk3/igt@kms_mmap_write_crc@main.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18296_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-apl6/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1181">i915#1181</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb3/igt@kms_plane_scaling@pipe-c-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb4/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb3/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl10/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl8/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl9/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl4/igt@i915_module_load@reload.html">PASS</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_color@pipe-c-ctm-blue-to-red.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@all-pipes-torture-bo:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/128">i915#128</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb6/igt@kms_cursor_legacy@all-pipes-torture-bo.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/57">i915#57</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_flip@flip-vs-dpms-off-vs-modeset@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl2/igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl6/igt@kms_flip@flip-vs-dpms-off-vs-modeset@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb3/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-glk5/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-glk8/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-iclb6/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8832/shard-kbl6/igt@kms_content_protection@lic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18296/shard-kbl1/igt@kms_content_protection@lic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8832 -&gt; Patchwork_18296</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8832: 00b9a4b2331e1dceef8994e3b144e2c5e8c55003 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5757: d78c7fd293cb228fe03ccff730202b033e25ff18 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18296: c7a29cfbc920df16ad17fbf6b7d06131bacd732a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4796641667943665982==--

--===============0119749808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0119749808==--
