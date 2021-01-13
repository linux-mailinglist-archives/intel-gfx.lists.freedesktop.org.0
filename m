Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C552F418C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 03:14:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257B589BB0;
	Wed, 13 Jan 2021 02:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E560789B95;
 Wed, 13 Jan 2021 02:14:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECEBDA7DFC;
 Wed, 13 Jan 2021 02:14:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 13 Jan 2021 02:14:01 -0000
Message-ID: <161050404196.11118.12070540119989311416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210112172246.11933-1-jani.nikula@intel.com>
In-Reply-To: <20210112172246.11933-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/lmem=3A_make_intel=5Fregion=5Flmem=5Fops_static?=
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
Content-Type: multipart/mixed; boundary="===============1723517710=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1723517710==
Content-Type: multipart/alternative;
 boundary="===============2488881673868868706=="

--===============2488881673868868706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/lmem: make intel_region_lmem_ops static
URL   : https://patchwork.freedesktop.org/series/85763/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9595_full -> Patchwork_19327_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19327_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19327_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19327_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl4/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.30@execution@texelfetch fs sampler2d 71x1-71x281:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][3] +4 similar issues
   [3]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_9595_full and Patchwork_19327_full:

### New Piglit tests (1) ###

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 s=z24_s8_d=z32f:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19327_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#658])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-iclb2/igt@feature_discovery@psr2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-snb:          [PASS][6] -> [DMESG-WARN][7] ([i915#42])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-snb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-snb4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1436] / [i915#716])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][10] ([i915#454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2574])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +13 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][16] ([i915#1319])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([i915#79])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#2122])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#2628])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +68 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1188])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#533])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][38] ([i915#265])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][41] ([IGT#2])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2437])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@polling:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#1542])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl2/igt@perf@polling.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#1542])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl1/igt@perf@polling-parameterized.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl4/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * {igt@gem_exec_fair@basic-deadline}:
    - shard-kbl:          [FAIL][46] ([i915#2846]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-kbl2/igt@gem_exec_fair@basic-deadline.html

  * {igt@gem_exec_fair@basic-none@vcs0}:
    - shard-kbl:          [FAIL][48] ([i915#2842]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [FAIL][50] ([i915#2842]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html

  * {igt@gem_exec_fair@basic-pace-share@rcs0}:
    - shard-tglb:         [FAIL][52] ([i915#2842]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-apl:          [DMESG-WARN][54] ([i915#1610]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-skl:          [DMESG-WARN][56] ([i915#1610] / [i915#2803]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][58] ([i915#2521]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][60] ([i915#54]) -> [PASS][61] +11 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][62] ([i915#2346]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][64] ([i915#79]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][66] ([i915#49]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][68] ([fdo#108145] / [i915#265]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-kbl:          [DMESG-WARN][70] ([i915#165] / [i915#180]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_universal_plane@universal-plane-pipe-a-functional:
    - shard-skl:          [DMESG-WARN][74] ([i915#1982]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl7/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl4/igt@kms_universal_plane@universal-plane-pipe-a-functional.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][76] ([i915#1542]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl9/igt@perf@polling-parameterized.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl7/igt@perf@polling-parameterized.html

  * igt@perf@short-reads:
    - shard-skl:          [FAIL][78] ([i915#51]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl5/igt@perf@short-reads.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl5/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][80] ([i915#1804] / [i915#2684]) -> [WARN][81] ([i915#2684])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][82], [FAIL][83]) ([i915#1610] / [i915#2295] / [i915#2426]) -> [FAIL][84] ([i915#2295])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl8/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-apl4/igt@runner@aborted.html
    - shard-tglb:         [FAIL][85] ([i915#2295] / [i915#2667]) -> ([FAIL][86], [FAIL][87]) ([i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-tglb3/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-tglb5/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-tglb2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][88], [FAIL][89], [FAIL][90]) ([i915#2029] / [i915#2295] / [i915#2426]) -> ([FAIL][91], [FAIL][92], [FAIL][93]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl9/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl3/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
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
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2628]: https://gitlab.freedesktop.org/drm/intel/issues/2628
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9595 -> Patchwork_19327

  CI-20190529: 20190529
  CI_DRM_9595: 3cc2b1cffef4d3e0c2cc38285e94334d248c2c5d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5956: d9bc7773043d11d37ae5b03bf18979541a9c7ef4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19327: be6327982c466aed23952ad3efaa4880ca6a0e01 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/index.html

--===============2488881673868868706==
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
<tr><td><b>Series:</b></td><td>drm/i915/lmem: make intel_region_lmem_ops st=
atic</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85763/">https://patchwork.freedesktop.org/series/85763/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19327/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19327/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9595_full -&gt; Patchwork_19327_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19327_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19327_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19327_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl7/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19327/shard-skl4/igt@kms_flip_tiling@flip-yf-tiled@edp-1-pipe-a.html">F=
AIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-1.30@execution@texelfetch fs sampler2d 71x1-71x281:<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> +4 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9595_full and Patchwork_19=
327_full:</p>
<h3>New Piglit tests (1)</h3>
<ul>
<li>spec@arb_depth_buffer_float@depthstencil-render-miplevels 292 s=3Dz24_s=
8_d=3Dz32f:<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19327_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-icl=
b5/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-snb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19327/shard-snb4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/42">i915#=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl5/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/sh=
ard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#4=
54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/=
shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_big_fb@y-tiled-64bpp-rotat=
e-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_chamelium@hdmi-audio-edid.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-apl3/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19327/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#=
54</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19327/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#5=
4</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19327/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#5=
4</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-2=
56x85-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-until=
ed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19327/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-u=
ntiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19327/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_193=
27/shard-skl5/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytile.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2628">i915#2628</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_frontbuffer_tracking@fbcps=
r-2p-indfb-fliptrack.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +68 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl=
1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19327/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/sh=
ard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl10/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19327/shard-skl2/igt@perf@polling.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</=
a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-apl1/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-=
apl4/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_fair@basic-deadline}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1932=
7/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none@vcs0}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1932=
7/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1932=
7/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar is=
sue</p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace-share@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19327/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19327/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-skl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i=
915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
803">i915#2803</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19327/shard-skl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">=
PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521"=
>i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19327/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19327/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.ht=
ml">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i=
915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19327/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19327/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19327/shard-skl9/igt@kms_frontbuffer_tracking@ps=
r-1p-offscren-pri-indfb-draw-mmap-wc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19327/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i91=
5#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19327/shard-kbl2/igt@kms_plane_lowres@pipe-c-tiling-y.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/=
shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pipe-a-functional:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl7/igt@kms_universal_plane@universal-plane-pipe-a-func=
tional.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19327/shard-skl4/igt@kms_universal_plane@univers=
al-plane-pipe-a-functional.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/=
shard-skl7/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl5/igt@perf@short-reads.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/51">i915#51</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard-skl5/igt=
@perf@short-reads.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19327/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-apl8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1610">i915#1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2426">i915#2426</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19327/shard-apl4/igt@runner@aborted.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i91=
5#2295</a>)</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9595/shard-tglb3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/shard=
-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19327/shard-tglb2/igt@runner@aborted.html">FAI=
L</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i9=
15#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
26">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2667">i915#2667</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2803">i915#2803</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9595/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9595/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9595/shard-skl9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327/sh=
ard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19327/shard-skl3/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19327=
/shard-skl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
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
<li>Linux: CI_DRM_9595 -&gt; Patchwork_19327</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9595: 3cc2b1cffef4d3e0c2cc38285e94334d248c2c5d @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5956: d9bc7773043d11d37ae5b03bf18979541a9c7ef4 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19327: be6327982c466aed23952ad3efaa4880ca6a0e01 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2488881673868868706==--

--===============1723517710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1723517710==--
