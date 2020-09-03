Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A13E725CC38
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 23:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05C946E0A6;
	Thu,  3 Sep 2020 21:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A54C46E0A5;
 Thu,  3 Sep 2020 21:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E767A47DB;
 Thu,  3 Sep 2020 21:28:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 03 Sep 2020 21:28:08 -0000
Message-ID: <159916848864.15504.3179564199099694687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200903121235.22760-1-anshuman.gupta@intel.com>
In-Reply-To: <20200903121235.22760-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgR2Vu?=
 =?utf-8?q?12_HDCP_1=2E4_support_on_DP_MST?=
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
Content-Type: multipart/mixed; boundary="===============2015267465=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2015267465==
Content-Type: multipart/alternative;
 boundary="===============1897328227259364876=="

--===============1897328227259364876==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Gen12 HDCP 1.4 support on DP MST
URL   : https://patchwork.freedesktop.org/series/81289/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8958_full -> Patchwork_18438_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18438_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18438_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18438_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@oa-formats:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@perf@oa-formats.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@perf@oa-formats.html

  
Known issues
------------

  Here are the changes found in Patchwork_18438_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] ([i915#1635] / [i915#1958]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl6/igt@gem_exec_reloc@basic-concurrent0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-skl:          [PASS][5] -> [TIMEOUT][6] ([i915#1958])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl5/igt@gem_exec_whisper@basic-normal.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl2/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([i915#1958])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk7/igt@gem_exec_whisper@basic-queues.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk6/igt@gem_exec_whisper@basic-queues.html

  * igt@gem_mmap@short-mmap:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#1958]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@gem_mmap@short-mmap.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@gem_mmap@short-mmap.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2261])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk5/igt@gem_partial_pwrite_pread@reads-display.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([i915#1418] / [i915#1958])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@i915_module_load@reload.html
    - shard-iclb:         [PASS][15] -> [TIMEOUT][16] ([i915#1418] / [i915#1958])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@i915_module_load@reload.html

  * igt@kms_big_fb@linear-64bpp-rotate-180:
    - shard-glk:          [PASS][17] -> [DMESG-FAIL][18] ([i915#118] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-iclb:         [PASS][19] -> [TIMEOUT][20] ([i915#1149] / [i915#1958])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_color@pipe-c-ctm-blue-to-red.html
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([i915#1149] / [i915#1958])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#177] / [i915#52] / [i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-256:
    - shard-iclb:         [PASS][29] -> [TIMEOUT][30] ([i915#1958]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_plane_cursor@pipe-c-viewport-size-256.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_plane_cursor@pipe-c-viewport-size-256.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1635] / [i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl4/igt@kms_vblank@pipe-c-query-busy-hang.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl8/igt@kms_vblank@pipe-c-query-busy-hang.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl2/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds:
    - shard-iclb:         [TIMEOUT][37] ([i915#1958]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb7/igt@gem_exec_whisper@basic-fds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb5/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [TIMEOUT][39] ([i915#1958]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk1/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_sync@basic-store-all:
    - shard-iclb:         [FAIL][43] ([i915#2356]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb8/igt@gem_sync@basic-store-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][45] ([i915#1635] / [i915#2278]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl3/igt@i915_selftest@mock@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl1/igt@i915_selftest@mock@requests.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][49] ([i915#118] / [i915#95]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:
    - shard-glk:          [FAIL][51] ([i915#49]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb8/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][63] ([i915#1635] / [i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl6/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-query-forked-busy-hang:
    - shard-apl:          [DMESG-WARN][65] ([i915#1635] / [i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl8/igt@kms_vblank@pipe-c-query-forked-busy-hang.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl6/igt@kms_vblank@pipe-c-query-forked-busy-hang.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@perf@polling-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_params@secure-non-root:
    - shard-tglb:         [SKIP][69] ([fdo#112283]) -> [TIMEOUT][70] ([i915#1958])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@gem_exec_params@secure-non-root.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@gem_exec_params@secure-non-root.html
    - shard-iclb:         [SKIP][71] ([fdo#112283]) -> [TIMEOUT][72] ([i915#1958])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@gem_exec_params@secure-non-root.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@gem_exec_params@secure-non-root.html

  * igt@kms_color_chamelium@pipe-a-ctm-max:
    - shard-iclb:         [SKIP][73] ([fdo#109284] / [fdo#111827]) -> [TIMEOUT][74] ([i915#1366] / [i915#1958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-max.html
    - shard-tglb:         [SKIP][75] ([fdo#109284] / [fdo#111827]) -> [TIMEOUT][76] ([i915#1958])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_color_chamelium@pipe-a-ctm-max.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-max.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][77] ([i915#1319] / [i915#1635]) -> [TIMEOUT][78] ([i915#1319] / [i915#1635] / [i915#1958])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][79] ([i915#1982]) -> [DMESG-WARN][80] ([i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][81] ([fdo#108145] / [i915#1635] / [i915#265]) -> [DMESG-FAIL][82] ([fdo#108145] / [i915#1635] / [i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [DMESG-FAIL][83] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][84] ([fdo#108145] / [i915#1635] / [i915#265])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1366]: https://gitlab.freedesktop.org/drm/intel/issues/1366
  [i915#1418]: https://gitlab.freedesktop.org/drm/intel/issues/1418
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2261]: https://gitlab.freedesktop.org/drm/intel/issues/2261
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2356]: https://gitlab.freedesktop.org/drm/intel/issues/2356
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8958 -> Patchwork_18438

  CI-20190529: 20190529
  CI_DRM_8958: c45d2896ceff5e085d0590e265e4ad02c600d1fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5777: c240b5c00d58860e376b012cc3c883c17ae63f37 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18438: 2f6741ef3a67382a48cb26d480393b5ddbedddb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/index.html

--===============1897328227259364876==
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
<tr><td><b>Series:</b></td><td>Gen12 HDCP 1.4 support on DP MST</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81289/">https://patchwork.freedesktop.org/series/81289/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8958_full -&gt; Patchwork_18438_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18438_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18438_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18438_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf@oa-formats:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@perf@oa-formats.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@perf@oa-formats.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18438_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl6/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl4/igt@gem_exec_reloc@basic-concurrent0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl5/igt@gem_exec_whisper@basic-normal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl2/igt@gem_exec_whisper@basic-normal.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk7/igt@gem_exec_whisper@basic-queues.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk6/igt@gem_exec_whisper@basic-queues.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@gem_mmap@short-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@gem_mmap@short-mmap.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk5/igt@gem_partial_pwrite_pread@reads-display.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@gem_partial_pwrite_pread@reads-display.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2261">i915#2261</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1418">i915#1418</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1418">i915#1418</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk6/igt@kms_big_fb@linear-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_color@pipe-c-ctm-blue-to-red.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_color@pipe-c-ctm-blue-to-red.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/177">i915#177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/52">i915#52</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-256:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_plane_cursor@pipe-c-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_plane_cursor@pipe-c-viewport-size-256.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl4/igt@kms_vblank@pipe-c-query-busy-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl8/igt@kms_vblank@pipe-c-query-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl2/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@perf@gen8-unprivileged-single-ctx-counters.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb7/igt@gem_exec_whisper@basic-fds.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb5/igt@gem_exec_whisper@basic-fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk8/igt@gem_exec_whisper@basic-queues-all.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk1/igt@gem_exec_whisper@basic-queues-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb8/igt@gem_sync@basic-store-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2356">i915#2356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl3/igt@i915_selftest@mock@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl1/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-glk7/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb8/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl2/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-forked-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl8/igt@kms_vblank@pipe-c-query-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl6/igt@kms_vblank@pipe-c-query-forked-busy-hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@gem_exec_params@secure-non-root.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@gem_exec_params@secure-non-root.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-max:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-max.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1366">i915#1366</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-tglb7/igt@kms_color_chamelium@pipe-a-ctm-max.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-max.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl4/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8958/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18438/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8958 -&gt; Patchwork_18438</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8958: c45d2896ceff5e085d0590e265e4ad02c600d1fa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5777: c240b5c00d58860e376b012cc3c883c17ae63f37 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18438: 2f6741ef3a67382a48cb26d480393b5ddbedddb7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1897328227259364876==--

--===============2015267465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2015267465==--
