Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 112732851B6
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 20:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449DD6E0F6;
	Tue,  6 Oct 2020 18:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B548A89AEA;
 Tue,  6 Oct 2020 18:39:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADED1A73C9;
 Tue,  6 Oct 2020 18:39:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 06 Oct 2020 18:39:16 -0000
Message-ID: <160200955667.18757.18187688659968309223@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201002144638.3266-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201002144638.3266-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_the_most_recent_pulse_for_the_heartbeat_=28re?=
 =?utf-8?b?djMp?=
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
Content-Type: multipart/mixed; boundary="===============2026463501=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2026463501==
Content-Type: multipart/alternative;
 boundary="===============4084173916259244357=="

--===============4084173916259244357==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Track the most recent pulse for the heartbeat (rev3)
URL   : https://patchwork.freedesktop.org/series/82339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9104_full -> Patchwork_18633_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18633_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18633_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18633_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb8/igt@kms_fbcon_fbt@psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb6/igt@kms_fbcon_fbt@psr.html

  
Known issues
------------

  Here are the changes found in Patchwork_18633_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2389])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#151])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1635] / [i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl4/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-hsw5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2122])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#49])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982]) +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl4/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([i915#1982]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb6/igt@kms_psr@psr2_dpms.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@file:
    - shard-skl:          [TIMEOUT][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@gem_ctx_persistence@file.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_shared@q-independent@vecs0:
    - shard-skl:          [DMESG-WARN][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@gem_ctx_shared@q-independent@vecs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@gem_ctx_shared@q-independent@vecs0.html

  * igt@gem_exec_create@madvise:
    - shard-glk:          [FAIL][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk1/igt@gem_exec_create@madvise.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk9/igt@gem_exec_create@madvise.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl2/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][45] ([i915#2424]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][47] ([i915#454]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-apl:          [FAIL][49] ([i915#1635] / [i915#2521]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-apl:          [DMESG-WARN][51] ([i915#1635] / [i915#1982]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl6/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl2/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][53] ([i915#2346]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][57] ([i915#198]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1:
    - shard-kbl:          [FAIL][59] ([i915#2122]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][61] ([i915#2122]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl9/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-kbl:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [FAIL][71] ([i915#1731]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][73] ([i915#1515]) -> [FAIL][74] ([i915#1515])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-tglb:         [INCOMPLETE][75] ([i915#2411]) -> [DMESG-WARN][76] ([i915#2411])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_suspend@forcewake:
    - shard-tglb:         [DMESG-WARN][77] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411]) -> [INCOMPLETE][78] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb2/igt@i915_suspend@forcewake.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb3/igt@i915_suspend@forcewake.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [DMESG-WARN][79] ([i915#2411]) -> [INCOMPLETE][80] ([i915#1436] / [i915#1982])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9104 -> Patchwork_18633

  CI-20190529: 20190529
  CI_DRM_9104: 9cca7a33b0ebfaa5e0e86098b38eb7508097936a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5802: 0e4fbc60ca5ad6585e642d2ddf8313f3c738426e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18633: 6b8db18711d55ab7bbf9bd6d3890a6e6e938e66f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/index.html

--===============4084173916259244357==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Track the most recent pulse for the heartbeat (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82339/">https://patchwork.freedesktop.org/series/82339/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9104_full -&gt; Patchwork_18633_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18633_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18633_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18633_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb3/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb8/igt@kms_fbcon_fbt@psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb6/igt@kms_fbcon_fbt@psr.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18633_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk5/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk3/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl9/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl1/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl4/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl1/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-hsw5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl6/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl4/igt@kms_plane@plane-position-covered-pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb6/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb6/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@gem_ctx_persistence@file.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@gem_ctx_persistence@file.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-independent@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@gem_ctx_shared@q-independent@vecs0.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@gem_ctx_shared@q-independent@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-glk1/igt@gem_exec_create@madvise.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-glk9/igt@gem_exec_create@madvise.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl2/igt@gem_exec_reloc@basic-wc-gtt-active.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl1/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl9/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-apl6/igt@kms_big_fb@linear-8bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-apl2/igt@kms_big_fb@linear-8bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl9/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-skl7/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-skl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1515">i915#1515</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb2/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18633/shard-tglb5/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9104 -&gt; Patchwork_18633</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9104: 9cca7a33b0ebfaa5e0e86098b38eb7508097936a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5802: 0e4fbc60ca5ad6585e642d2ddf8313f3c738426e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18633: 6b8db18711d55ab7bbf9bd6d3890a6e6e938e66f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4084173916259244357==--

--===============2026463501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2026463501==--
