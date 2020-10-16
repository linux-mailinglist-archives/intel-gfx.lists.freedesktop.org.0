Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04A82903F0
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 13:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1328B6EDA7;
	Fri, 16 Oct 2020 11:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 59D356EDA4;
 Fri, 16 Oct 2020 11:20:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51A2BA41FB;
 Fri, 16 Oct 2020 11:20:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 16 Oct 2020 11:20:56 -0000
Message-ID: <160284725629.8601.4111574753315362432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016092527.29039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201016092527.29039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_active_reference_on_the_vma_while_capturing?=
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
Content-Type: multipart/mixed; boundary="===============0346177168=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0346177168==
Content-Type: multipart/alternative;
 boundary="===============4514230672368646755=="

--===============4514230672368646755==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use the active reference on the vma while capturing
URL   : https://patchwork.freedesktop.org/series/82763/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9145_full -> Patchwork_18711_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18711_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18711_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18711_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-snb:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@prime_vgem@basic-gtt:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb7/igt@prime_vgem@basic-gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb7/igt@prime_vgem@basic-gtt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@hotrebind}:
    - shard-hsw:          NOTRUN -> [WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-hsw5/igt@core_hotunplug@hotrebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_18711_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#82])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#198])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@kms_big_fb@linear-8bpp-rotate-0:
    - shard-apl:          [PASS][12] -> [DMESG-WARN][13] ([i915#1635] / [i915#1982]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl7/igt@kms_big_fb@linear-8bpp-rotate-0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl4/igt@kms_big_fb@linear-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#1119])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          [PASS][16] -> [SKIP][17] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb4/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2122])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk4/igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk3/igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][20] -> [FAIL][21] ([i915#1635] / [i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#2122])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#49])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
    - shard-tglb:         [PASS][28] -> [DMESG-WARN][29] ([i915#1982]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#49])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1188]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][34] -> [DMESG-FAIL][35] ([fdo#108145] / [i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl8/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl10/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][40] -> [FAIL][41] ([i915#1542])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb5/igt@perf@polling-parameterized.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb8/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-tglb:         [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +5 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb2/igt@core_hotunplug@unbind-rebind.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb1/igt@core_hotunplug@unbind-rebind.html

  * {igt@gem_exec_capture@pi@rcs0}:
    - shard-glk:          [INCOMPLETE][44] ([i915#2553]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk4/igt@gem_exec_capture@pi@rcs0.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk3/igt@gem_exec_capture@pi@rcs0.html

  * {igt@gem_exec_capture@pi@vcs0}:
    - shard-skl:          [INCOMPLETE][46] ([i915#2553]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl9/igt@gem_exec_capture@pi@vcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl1/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][48] ([i915#118] / [i915#95]) -> [PASS][49] +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk6/igt@gem_exec_whisper@basic-contexts.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk2/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][50] ([i915#2424]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          [FAIL][52] ([i915#2521]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][54] ([i915#2521]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180:
    - shard-skl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:
    - shard-apl:          [DMESG-WARN][58] ([i915#1635] / [i915#1982]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-kbl:          [DMESG-WARN][60] ([i915#1982]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][64] ([i915#1188]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@kms_hdr@bpc-switch.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][66] ([fdo#108145] / [i915#265]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][70] ([i915#1542]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk7/igt@perf@polling-parameterized.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk1/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][72] ([i915#1722]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@perf@polling-small-buf.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][74] ([i915#658]) -> [SKIP][75] ([i915#588])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2553]: https://gitlab.freedesktop.org/drm/intel/issues/2553
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9145 -> Patchwork_18711

  CI-20190529: 20190529
  CI_DRM_9145: 1b4f5161759852616a451c1366b95ff2ab8a1263 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18711: edea817e95d88e29c60732897288b3afd5cfcbf7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/index.html

--===============4514230672368646755==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use the active reference on the vma while capturing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82763/">https://patchwork.freedesktop.org/series/82763/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9145_full -&gt; Patchwork_18711_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18711_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18711_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18711_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb7/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb7/igt@prime_vgem@basic-gtt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@core_hotunplug@hotrebind}:<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-hsw5/igt@core_hotunplug@hotrebind.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18711_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb4/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk2/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl7/igt@kms_big_fb@linear-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl4/igt@kms_big_fb@linear-8bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1119">i915#1119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-snb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-snb4/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk4/igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk3/igt@kms_flip@2x-wf_vblank-ts-check@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl8/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl10/igt@kms_universal_plane@disable-primary-vs-flip-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb8/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-tglb2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-tglb1/igt@core_hotunplug@unbind-rebind.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_capture@pi@rcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2553">i915#2553</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk3/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_capture@pi@vcs0}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl9/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2553">i915#2553</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl1/igt@gem_exec_capture@pi@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk6/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk2/igt@gem_exec_whisper@basic-contexts.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl8/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl9/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-rotation-180.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-apl8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-apl8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk5/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-glk1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-skl2/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-skl8/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_dc@dc3co-vpb-simulation:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9145/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18711/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9145 -&gt; Patchwork_18711</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9145: 1b4f5161759852616a451c1366b95ff2ab8a1263 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18711: edea817e95d88e29c60732897288b3afd5cfcbf7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4514230672368646755==--

--===============0346177168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0346177168==--
