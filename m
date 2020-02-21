Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3003D166C67
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 02:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D292D6EE91;
	Fri, 21 Feb 2020 01:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5322D6EE8F;
 Fri, 21 Feb 2020 01:37:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AA34A41FB;
 Fri, 21 Feb 2020 01:37:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 21 Feb 2020 01:37:54 -0000
Message-ID: <158224907420.7918.238864625573349153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=5Fdevice_managed_resources?=
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

Series: drm_device managed resources
URL   : https://patchwork.freedesktop.org/series/73633/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7963_full -> Patchwork_16618_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16618_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16618_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16618_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_param@basic-default:
    - shard-hsw:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw6/igt@gem_ctx_param@basic-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw2/igt@gem_ctx_param@basic-default.html
    - shard-snb:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb5/igt@gem_ctx_param@basic-default.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-snb1/igt@gem_ctx_param@basic-default.html
    - shard-tglb:         [PASS][5] -> [FAIL][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb6/igt@gem_ctx_param@basic-default.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb5/igt@gem_ctx_param@basic-default.html

  * igt@gem_ctx_param@root-set-no-zeromap-enabled:
    - shard-glk:          [PASS][7] -> [FAIL][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk7/igt@gem_ctx_param@root-set-no-zeromap-enabled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk7/igt@gem_ctx_param@root-set-no-zeromap-enabled.html
    - shard-iclb:         [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_param@root-set-no-zeromap-enabled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb5/igt@gem_ctx_param@root-set-no-zeromap-enabled.html
    - shard-apl:          [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@gem_ctx_param@root-set-no-zeromap-enabled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl7/igt@gem_ctx_param@root-set-no-zeromap-enabled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-kbl:          [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
    - shard-skl:          [PASS][15] -> [FAIL][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl10/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@i915_selftest@mock_timelines:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb4/igt@i915_selftest@mock_timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb4/igt@i915_selftest@mock_timelines.html
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl7/igt@i915_selftest@mock_timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl3/igt@i915_selftest@mock_timelines.html
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb8/igt@i915_selftest@mock_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@i915_selftest@mock_timelines.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-tglb:         [PASS][23] -> [SKIP][24] +16 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparant-fb:
    - shard-iclb:         [PASS][25] -> [SKIP][26] +17 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_plane_alpha_blend@pipe-b-alpha-transparant-fb.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparant-fb.html

  
#### Warnings ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-tglb:         [SKIP][27] ([fdo#110841]) -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-hsw:          [SKIP][29] ([fdo#109271]) -> [FAIL][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [FAIL][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb1/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-snb1/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
    - shard-kbl:          [SKIP][33] ([fdo#109271]) -> [FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl3/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl7/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
    - shard-skl:          [SKIP][35] ([fdo#109271]) -> [FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl9/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl7/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
    - shard-glk:          [SKIP][37] ([fdo#109271]) -> [FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk9/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
    - shard-apl:          [SKIP][39] ([fdo#109271]) -> [FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl4/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl1/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
    - shard-iclb:         [SKIP][41] ([i915#768]) -> [FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][43] ([fdo#112025]) -> [SKIP][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
    - shard-iclb:         [SKIP][45] ([fdo#109278]) -> [SKIP][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         [SKIP][47] ([fdo#110723]) -> [SKIP][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
    - shard-tglb:         [SKIP][49] ([fdo#111615]) -> [SKIP][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-iclb:         [SKIP][51] ([fdo#109279]) -> [SKIP][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
    - shard-tglb:         [SKIP][53] ([fdo#109279]) -> [SKIP][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         [SKIP][55] ([fdo#111825]) -> [SKIP][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
    - shard-iclb:         [SKIP][57] ([fdo#109274]) -> [SKIP][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [SKIP][59] ([fdo#109280]) -> [SKIP][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-tglb:         [SKIP][61] ([i915#668]) -> [SKIP][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         [SKIP][63] ([fdo#109502]) -> [SKIP][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_vrr@flip-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_vrr@flip-dpms.html
    - shard-tglb:         [SKIP][65] ([fdo#109502]) -> [SKIP][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_vrr@flip-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_vrr@flip-dpms.html

  * igt@perf_pmu@render-node-busy-idle-vcs1:
    - shard-apl:          [SKIP][67] ([fdo#109271] / [fdo#112080]) -> [FAIL][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@perf_pmu@render-node-busy-idle-vcs1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl7/igt@perf_pmu@render-node-busy-idle-vcs1.html
    - shard-snb:          [SKIP][69] ([fdo#109271] / [fdo#112080]) -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb5/igt@perf_pmu@render-node-busy-idle-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-snb1/igt@perf_pmu@render-node-busy-idle-vcs1.html
    - shard-skl:          [SKIP][71] ([fdo#109271] / [fdo#112080]) -> [FAIL][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@perf_pmu@render-node-busy-idle-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl10/igt@perf_pmu@render-node-busy-idle-vcs1.html
    - shard-hsw:          [SKIP][73] ([fdo#109271] / [fdo#112080]) -> [FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw6/igt@perf_pmu@render-node-busy-idle-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw2/igt@perf_pmu@render-node-busy-idle-vcs1.html
    - shard-glk:          [SKIP][75] ([fdo#109271] / [fdo#112080]) -> [FAIL][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk7/igt@perf_pmu@render-node-busy-idle-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk7/igt@perf_pmu@render-node-busy-idle-vcs1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_color_chamelium@pipe-a-ctm-0-5}:
    - shard-iclb:         [SKIP][77] ([fdo#109284] / [fdo#111827]) -> [SKIP][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
    - shard-tglb:         [SKIP][79] ([fdo#111827]) -> [SKIP][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  
Known issues
------------

  Here are the changes found in Patchwork_16618_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][81] -> [SKIP][82] ([fdo#112080]) +8 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][83] -> [SKIP][84] ([i915#677]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#112146]) +6 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][87] -> [SKIP][88] ([fdo#109276]) +25 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [PASS][89] -> [FAIL][90] ([i915#694]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@gem_partial_pwrite_pread@reads.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw2/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#644])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-hsw:          [PASS][93] -> [FAIL][94] ([i915#817])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@writes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][95] -> [SKIP][96] ([fdo#109271]) +15 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [PASS][97] -> [INCOMPLETE][98] ([i915#58] / [k.org#198133])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk3/igt@i915_selftest@mock_timelines.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk4/igt@i915_selftest@mock_timelines.html
    - shard-hsw:          [PASS][99] -> [INCOMPLETE][100] ([i915#61])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw5/igt@i915_selftest@mock_timelines.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw6/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [PASS][101] -> [INCOMPLETE][102] ([fdo#103665])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl7/igt@i915_selftest@mock_timelines.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl1/igt@i915_selftest@mock_timelines.html
    - shard-snb:          [PASS][103] -> [INCOMPLETE][104] ([i915#82])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb6/igt@i915_selftest@mock_timelines.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-snb5/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [PASS][105] -> [INCOMPLETE][106] ([fdo#103927])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl8/igt@i915_selftest@mock_timelines.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl7/igt@i915_selftest@mock_timelines.html

  * igt@kms_ccs@pipe-b-bad-aux-stride:
    - shard-skl:          [PASS][107] -> [SKIP][108] ([fdo#109271]) +15 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl4/igt@kms_ccs@pipe-b-bad-aux-stride.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl1/igt@kms_ccs@pipe-b-bad-aux-stride.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-hsw:          [PASS][109] -> [SKIP][110] ([fdo#109271]) +9 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][111] -> [DMESG-WARN][112] ([i915#88])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl9/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-c-torture-move:
    - shard-glk:          [PASS][113] -> [DMESG-WARN][114] ([i915#128])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk3/igt@kms_cursor_legacy@pipe-c-torture-move.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk2/igt@kms_cursor_legacy@pipe-c-torture-move.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-kbl:          [PASS][115] -> [SKIP][116] ([fdo#109271]) +14 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl2/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#34])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#407])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk3/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk9/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-skl:          [PASS][121] -> [FAIL][122] ([i915#49])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][123] -> [DMESG-WARN][124] ([i915#180]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][125] -> [DMESG-WARN][126] ([i915#180]) +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][127] -> [FAIL][128] ([fdo#108145])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([fdo#108145] / [i915#265])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][131] -> [SKIP][132] ([fdo#109441]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-tglb:         [PASS][133] -> [SKIP][134] ([i915#668]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb1/igt@kms_psr@psr2_sprite_render.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb2/igt@kms_psr@psr2_sprite_render.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][135] -> [FAIL][136] ([i915#84])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-glk6/igt@perf@oa-exponents.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-glk8/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][137] ([i915#1241]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [FAIL][139] ([i915#1241]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [FAIL][141] ([i915#679]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [INCOMPLETE][143] ([fdo#103665]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-kbl6/igt@gem_eio@in-flight-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][145] ([fdo#109276] / [i915#677]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][147] ([i915#677]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][149] ([fdo#109276]) -> [PASS][150] +12 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][151] ([fdo#112146]) -> [PASS][152] +6 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][153] ([i915#644]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][155] ([i915#413]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-snb:          [SKIP][157] ([fdo#109271]) -> [PASS][158] +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][159] ([i915#96]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][161] ([i915#79]) -> [PASS][162]
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][163] ([i915#180]) -> [PASS][164] +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/shard-apl1/igt@kms_plane@plane-panning-bottom-right-su

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16618/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
