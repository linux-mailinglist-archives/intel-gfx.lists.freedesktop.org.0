Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A132F53ED
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 21:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495456EC3A;
	Wed, 13 Jan 2021 20:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCF096EC38;
 Wed, 13 Jan 2021 20:16:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4039A8836;
 Wed, 13 Jan 2021 20:16:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 13 Jan 2021 20:16:29 -0000
Message-ID: <161056898977.11121.2803690878504620130@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113135009.3606813-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210113135009.3606813-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_mm/dmapool=3A_Use_might=5Falloc=28?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0844424007=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0844424007==
Content-Type: multipart/alternative;
 boundary="===============5218466199252917369=="

--===============5218466199252917369==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] mm/dmapool: Use might_alloc()
URL   : https://patchwork.freedesktop.org/series/85808/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9602_full -> Patchwork_19334_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19334_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19334_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19334_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-tglb:         ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb3/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb1/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_request_retire@retire-vma-not-inactive:
    - shard-iclb:         [PASS][51] -> [INCOMPLETE][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb6/igt@gem_request_retire@retire-vma-not-inactive.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb1/igt@gem_request_retire@retire-vma-not-inactive.html

  * igt@kms_cursor_legacy@pipe-b-single-move:
    - shard-glk:          [PASS][53] -> [INCOMPLETE][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk8/igt@kms_cursor_legacy@pipe-b-single-move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk7/igt@kms_cursor_legacy@pipe-b-single-move.html

  
Known issues
------------

  Here are the changes found in Patchwork_19334_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@reset-stress:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2771])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl1/igt@gem_eio@reset-stress.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl4/igt@gem_eio@reset-stress.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][57] -> [DMESG-WARN][58] ([i915#118] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][59] -> [SKIP][60] ([i915#2190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/igt@gem_huc_copy@huc-copy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-skl:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl10/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl9/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#54]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#2405] / [i915#300])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][68] -> [FAIL][69] ([i915#2346])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          [PASS][70] -> [DMESG-WARN][71] ([i915#42])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271]) +13 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#49])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#265]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_properties@connector-properties-legacy:
    - shard-kbl:          [PASS][77] -> [DMESG-WARN][78] ([i915#165] / [i915#180] / [i915#78])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-kbl4/igt@kms_properties@connector-properties-legacy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-kbl2/igt@kms_properties@connector-properties-legacy.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][81] ([i915#2918]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-iclb:         [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-tglb:         [FAIL][85] ([i915#2842]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-kbl:          [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * {igt@gem_exec_fair@basic-throttle@rcs0}:
    - shard-glk:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][91] ([i915#118] / [i915#95]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][93] ([i915#2291] / [i915#541]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][95] ([i915#2597]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][97] ([i915#54]) -> [PASS][98] +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][99] ([i915#72]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][101] ([i915#2346]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
    - shard-skl:          [FAIL][103] ([i915#2122]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@b-edp1:
    - shard-skl:          [FAIL][105] ([i915#407]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl6/igt@kms_flip@modeset-vs-vblank-race-interruptible@b-edp1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl2/igt@kms_flip@modeset-vs-vblank-race-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][107] ([i915#1188]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [FAIL][111] ([i915#1542]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb7/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][113] -> [SKIP][114] ([i915#588])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][115] ([i915#2681] / [i915#2684]) -> [WARN][116] ([i915#1804] / [i915#2684])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][117] ([i915#1804] / [i915#2684]) -> [WARN][118] ([i915#2684])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][119] ([i915#2295]) -> ([FAIL][120], [FAIL][121]) ([i915#2295] / [i915#2426])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-kbl7/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-kbl3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         [FAIL][122] ([i915#2295] / [i915#2724]) -> ([FAIL][123], [FAIL][124]) ([i915#2295] / [i915#2722] / [i915#2724])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-iclb6/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-iclb1/igt@runner@aborted.html
    - shard-tglb:         [FAIL][125] ([i915#2295] / [i915#2667]) -> ([FAIL][126], [FAIL][127]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#1436] / [i915#2295] / [i915#2426]) -> ([FAIL][131], [FAIL][132]) ([i915#1814] / [i915#2029] / [i915#2295])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl9/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2771]: https://gitlab.freedesktop.org/drm/intel/issues/2771
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2918]: https://gitlab.freedesktop.org/drm/intel/issues/2918
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9602 -> Patchwork_19334

  CI-20190529: 20190529
  CI_DRM_9602: 0e9e2e0eb03ba457a9ce479b8276be88761320ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19334: 9d213951b7bfd74093f10235ba412ef3f0ee1da5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/index.html

--===============5218466199252917369==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>series starting with [1/2] mm/dmapool: Use m=
ight_alloc()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85808/">https://patchwork.freedesktop.org/series/85808/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19334/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19334/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9602_full -&gt; Patchwork_19334_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19334_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19334_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19334_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9602/shard-tglb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
9602/shard-tglb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_9602/shard-tglb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shar=
d-tglb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_9602/shard-tglb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9602/shard-tglb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/=
shard-tglb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_9602/shard-tglb3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tgl=
b3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
602/shard-tglb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-tglb1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard=
-tglb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_9602/shard-tglb8/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb8/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334=
/shard-tglb8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19334/shard-tglb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
334/shard-tglb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19334/shard-tglb7/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19334/shard-tglb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19334/shard-tglb6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19334/shard-tglb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19334/shard-tglb5/boot.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tg=
lb3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19334/shard-tglb3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard=
-tglb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19334/shard-tglb2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb2/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/sh=
ard-tglb1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19334/shard-tglb1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb1/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334=
/shard-tglb8/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_request_retire@retire-vma-not-inactive:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb6/igt@gem_request_retire@retire-vma-not-inactive.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19334/shard-iclb1/igt@gem_request_retire@retire-vma-not-inactive.html"=
>INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-b-single-move:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk8/igt@kms_cursor_legacy@pipe-b-single-move.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
334/shard-glk7/igt@kms_cursor_legacy@pipe-b-single-move.html">INCOMPLETE</a=
></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19334_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl1/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-skl4/i=
gt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2771">i915#2771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19334/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl10/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334=
/shard-skl9/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19334/shard-skl1/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19334/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/54">i915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
334/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#24=
05</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300">i9=
15#300</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19334/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/s=
hard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19334/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2=
p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +13 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19334/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-o=
ffscren-pri-indfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19334/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_properties@connector-properties-legacy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-kbl4/igt@kms_properties@connector-properties-legacy.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19334/shard-kbl2/igt@kms_properties@connector-properties-legacy.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
65">i915#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/78">i915#78</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/sha=
rd-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2918"=
>i915#2918</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19334/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19334/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19334/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
34/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-throttle@rcs0}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19334/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk9/igt@gem_exec_whisper@basic-queues-forked.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118"=
>i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19334/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2291">i9=
15#2291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
1">i915#541</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19334/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19334/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19334/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/72">i915#72</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19334/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-le=
gacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19334/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122=
">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19334/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl6/igt@kms_flip@modeset-vs-vblank-race-interruptible@b=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/407">i915#407</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19334/shard-skl2/igt@kms_flip@modeset-vs-vblank-race-inte=
rruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/=
shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
34/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-tglb7/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334=
/shard-tglb8/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/=
shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19334/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19334/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9602/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard-kbl3/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19334/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#=
2426</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9602/shard-iclb6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard=
-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19334/shard-iclb1/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i9=
15#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/27=
22">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2724">i915#2724</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9602/shard-tglb5/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/shard=
-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19334/shard-tglb6/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i9=
15#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
26">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2803">i915#2803</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9602/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9602/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9602/shard-skl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19334/sh=
ard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19334/shard-skl3/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i=
915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9602 -&gt; Patchwork_19334</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9602: 0e9e2e0eb03ba457a9ce479b8276be88761320ca @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19334: 9d213951b7bfd74093f10235ba412ef3f0ee1da5 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5218466199252917369==--

--===============0844424007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0844424007==--
