Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 496D324E230
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 22:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBEA6EBFF;
	Fri, 21 Aug 2020 20:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2D576EBFE;
 Fri, 21 Aug 2020 20:38:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D41FCA8830;
 Fri, 21 Aug 2020 20:38:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Fri, 21 Aug 2020 20:38:26 -0000
Message-ID: <159804230683.16200.10642326479895659517@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200820183012.288794-1-lyude@redhat.com>
In-Reply-To: <20200820183012.288794-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=2C_nouveau=3A_Cleanup_nouveau_HPD_and_add_DP_featur?=
 =?utf-8?q?es_from_i915_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============1921078939=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1921078939==
Content-Type: multipart/alternative;
 boundary="===============5891042425303739682=="

--===============5891042425303739682==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev5)
URL   : https://patchwork.freedesktop.org/series/80542/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8914_full -> Patchwork_18389_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18389_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18389_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18389_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@!opengl 1.3@gl-1.3-texture-env:
    - pig-snb-2600:       NOTRUN -> [FAIL][1] +26 similar issues
   [1]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8914_full and Patchwork_18389_full:

### New Piglit tests (22) ###

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 ds=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.54] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 s=z24_s8_d=z32f_s8:
    - Statuses : 1 fail(s)
    - Exec time: [0.52] s

  * spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f_s8_s=z24_s8:
    - Statuses : 1 fail(s)
    - Exec time: [9.76] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1d:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.94] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.03] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 1dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.10] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.90] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [0.82] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.98] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 2dshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.03] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() 3d:
    - Statuses : 1 fail(s)
    - Exec time: [0.92] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() cubearray:
    - Statuses : 1 fail(s)
    - Exec time: [0.77] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture() cubeshadow:
    - Statuses : 1 fail(s)
    - Exec time: [0.88] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.59] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darrayshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.61] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:
    - Statuses : 1 fail(s)
    - Exec time: [1.52] s

  * spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) cubeshadow:
    - Statuses : 1 fail(s)
    - Exec time: [1.28] s

  * spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2d:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-1.50@execution@built-in-functions@gs-mix-float-float-float:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-1.50@execution@built-in-functions@gs-op-add-ivec4-ivec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-neg-int-ivec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.10] s

  

Known issues
------------

  Here are the changes found in Patchwork_18389_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@read-writes:
    - shard-skl:          [PASS][2] -> [DMESG-WARN][3] ([i915#1982]) +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl8/igt@gem_caching@read-writes.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl4/igt@gem_caching@read-writes.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk9/igt@gem_exec_create@forked.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk9/igt@gem_exec_create@forked.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#151] / [i915#155])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl7/igt@i915_pm_rpm@system-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl2/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#198] / [i915#2278])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl2/igt@i915_selftest@mock@contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@i915_selftest@mock@contexts.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][10] -> [DMESG-FAIL][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
    - shard-hsw:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw1/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#2122]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-iclb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl9/igt@kms_hdr@bpc-switch.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145] / [i915#265])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_vblank@pipe-c-ts-continuation-idle-hang:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1635] / [i915#1982])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#1542])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb5/igt@perf@blocking-parameterized.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb1/igt@perf@blocking-parameterized.html

  * igt@prime_busy@hang@bcs0:
    - shard-hsw:          [PASS][30] -> [FAIL][31] ([i915#2258]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw8/igt@prime_busy@hang@bcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw8/igt@prime_busy@hang@bcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-tglb:         [INCOMPLETE][32] ([i915#1958]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb8/igt@gem_exec_endless@dispatch@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb5/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][34] ([i915#118] / [i915#95]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk7/igt@gem_exec_whisper@basic-forked.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk6/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_flink_basic@basic:
    - shard-snb:          [TIMEOUT][36] ([i915#1958]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@gem_flink_basic@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@gem_flink_basic@basic.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][38] ([i915#118] / [i915#95]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][40] ([i915#1635] / [i915#1982]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][44] ([i915#2346]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][46] ([i915#2055]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         [DMESG-WARN][48] ([i915#1982]) -> [PASS][49] +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [FAIL][50] ([i915#49]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][52] ([fdo#108145] / [i915#265]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_vblank@crtc-id:
    - shard-kbl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl4/igt@kms_vblank@crtc-id.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl1/igt@kms_vblank@crtc-id.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][56] ([i915#198]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][58] ([i915#1542]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb6/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb3/igt@perf@polling-parameterized.html

  * igt@perf_pmu@busy-accuracy-98@vecs0:
    - shard-skl:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61] +9 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl4/igt@perf_pmu@busy-accuracy-98@vecs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl7/igt@perf_pmu@busy-accuracy-98@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-concurrent16:
    - shard-snb:          [TIMEOUT][62] ([i915#1958]) -> [FAIL][63] ([i915#1930])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-snb:          [TIMEOUT][64] ([i915#1958]) -> [SKIP][65] ([fdo#109271]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [DMESG-WARN][66] ([i915#1982]) -> [DMESG-FAIL][67] ([fdo#108145] / [i915#1982])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [DMESG-FAIL][68] -> [DMESG-FAIL][69] ([i915#1982])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl2/igt@perf@polling-parameterized.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@perf@polling-parameterized.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][70] ([i915#2029]) -> [FAIL][71] ([i915#1436])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl3/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2258]: https://gitlab.freedesktop.org/drm/intel/issues/2258
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8914 -> Patchwork_18389

  CI-20190529: 20190529
  CI_DRM_8914: 1339d80a19c0da27c443a4430fd0fe8a9d924b97 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18389: 6315f5ad4f8179c74041b391d3de28a287f909dc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/index.html

--===============5891042425303739682==
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
<tr><td><b>Series:</b></td><td>drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80542/">https://patchwork.freedesktop.org/series/80542/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8914_full -&gt; Patchwork_18389_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18389_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18389_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18389_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@!opengl 1.3@gl-1.3-texture-env:<ul>
<li>pig-snb-2600:       NOTRUN -&gt; <a href="None">FAIL</a> +26 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8914_full and Patchwork_18389_full:</p>
<h3>New Piglit tests (22)</h3>
<ul>
<li>
<p>spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 ds=z32f_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.54] s</li>
</ul>
</li>
<li>
<p>spec@arb_depth_buffer_float@depthstencil-render-miplevels 1024 s=z24_s8_d=z32f_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.52] s</li>
</ul>
</li>
<li>
<p>spec@arb_depth_buffer_float@depthstencil-render-miplevels 585 d=z32f_s8_s=z24_s8:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [9.76] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 1d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 1darray:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.94] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 1darrayshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.03] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 1dshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.10] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.90] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darray:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.82] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 2darrayshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.98] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 2dshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.03] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() 3d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() cubearray:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.77] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture() cubeshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.88] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darray:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.59] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 1darrayshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.61] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) 2darray:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.52] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection texture(bias) cubeshadow:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.30@execution@tex-miplevel-selection textureoffset 2d:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.50@execution@built-in-functions@gs-mix-float-float-float:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.50@execution@built-in-functions@gs-op-add-ivec4-ivec4:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>spec@glsl-1.50@execution@built-in-functions@gs-op-bitxor-neg-int-ivec3:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18389_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl8/igt@gem_caching@read-writes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl4/igt@gem_caching@read-writes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk9/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk9/igt@gem_exec_create@forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl7/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl2/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl2/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw1/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw6/igt@kms_cursor_legacy@short-flip-after-cursor-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-idle-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-idle-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb5/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb1/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang@bcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw8/igt@prime_busy@hang@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw8/igt@prime_busy@hang@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2258">i915#2258</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb8/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb5/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk7/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk6/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@gem_flink_basic@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@gem_flink_basic@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-apl2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-apl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-hsw6/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2055">i915#2055</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-hsw1/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@crtc-id:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-kbl4/igt@kms_vblank@crtc-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-kbl1/igt@kms_vblank@crtc-id.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-iclb6/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-iclb3/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl4/igt@perf_pmu@busy-accuracy-98@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl7/igt@perf_pmu@busy-accuracy-98@vecs0.html">PASS</a> +9 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-concurrent16:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@gem_exec_reloc@basic-concurrent16.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1930">i915#1930</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl2/igt@perf@polling-parameterized.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@perf@polling-parameterized.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8914/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18389/shard-skl1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8914 -&gt; Patchwork_18389</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8914: 1339d80a19c0da27c443a4430fd0fe8a9d924b97 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18389: 6315f5ad4f8179c74041b391d3de28a287f909dc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5891042425303739682==--

--===============1921078939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1921078939==--
