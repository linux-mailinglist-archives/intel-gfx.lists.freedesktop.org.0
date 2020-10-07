Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8192867A5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Oct 2020 20:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414EE6E97F;
	Wed,  7 Oct 2020 18:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FB666E0E9;
 Wed,  7 Oct 2020 18:46:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47CE7A0078;
 Wed,  7 Oct 2020 18:46:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 07 Oct 2020 18:46:37 -0000
Message-ID: <160209639725.15198.8132875072476647483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201007151718.22710-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201007151718.22710-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Exclude_low_pages_=28128KiB=29_of_stolen_from_use?=
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
Content-Type: multipart/mixed; boundary="===============0511440319=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0511440319==
Content-Type: multipart/alternative;
 boundary="===============1879954420614929698=="

--===============1879954420614929698==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Exclude low pages (128KiB) of stolen from use
URL   : https://patchwork.freedesktop.org/series/82443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9109_full -> Patchwork_18648_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18648_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18648_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18648_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@parallel@bcs0:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_fence@parallel@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_fence@parallel@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gen3_render_tiledy_blits:
    - shard-snb:          NOTRUN -> [FAIL][4] +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-snb7/igt@gen3_render_tiledy_blits.html

  
#### Warnings ####

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [FAIL][5] ([i915#1888]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  
Known issues
------------

  Here are the changes found in Patchwork_18648_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@parallel@vecs0:
    - shard-hsw:          [PASS][7] -> [FAIL][8] ([i915#1888]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_fence@parallel@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_fence@parallel@vecs0.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][9] -> [TIMEOUT][10] ([i915#2424])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb6/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1635] / [i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +7 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl1/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#2370])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [DMESG-FAIL][28] ([fdo#108145] / [i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb6/igt@kms_psr@psr2_primary_blt.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#1542])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl1/igt@perf@blocking.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl10/igt@perf@blocking.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-hsw:          [FAIL][33] ([i915#1888]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_whisper@basic-fds-forked-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-snb:          [INCOMPLETE][35] ([i915#82]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-snb7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-snb7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-skl:          [FAIL][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-tglb:         [FAIL][39] ([i915#2521]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb2/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-kbl:          [DMESG-WARN][43] ([i915#78]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][45] ([i915#79]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][49] ([i915#2122]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-apl:          [DMESG-WARN][51] ([i915#1635] / [i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
    - shard-skl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl10/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@perf@invalid-oa-metric-set-id:
    - shard-glk:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-glk4/igt@perf@invalid-oa-metric-set-id.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-glk7/igt@perf@invalid-oa-metric-set-id.html

  
#### Warnings ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [INCOMPLETE][66] ([i915#155])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl2/igt@gem_eio@in-flight-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [DMESG-WARN][68] ([i915#1982])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-skl:          [DMESG-FAIL][69] ([i915#1982] / [i915#31]) -> [FAIL][70] ([i915#31])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl1/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9109 -> Patchwork_18648

  CI-20190529: 20190529
  CI_DRM_9109: 96e1886f0244ba6e235730b1da9146e71ed6ff3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5803: 33f07391e5f6a8d9323e471c81db3f29f91ed4d7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18648: f90f514efc94c242f2cadbcfd46c86cb2466e524 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/index.html

--===============1879954420614929698==
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
<tr><td><b>Series:</b></td><td>drm/i915: Exclude low pages (128KiB) of stolen from use</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82443/">https://patchwork.freedesktop.org/series/82443/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9109_full -&gt; Patchwork_18648_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18648_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18648_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18648_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@parallel@bcs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_fence@parallel@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_fence@parallel@bcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-snb7/igt@gen3_render_tiledy_blits.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_partial_pwrite_pread@writes-after-reads-display:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18648_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@parallel@vecs0:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_fence@parallel@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_fence@parallel@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb6/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-apl8/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl1/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl5/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb6/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl1/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl10/igt@perf@blocking.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-hsw2/igt@gem_exec_whisper@basic-fds-forked-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-hsw6/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-snb7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-snb7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb2/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb6/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl6/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/78">i915#78</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl8/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-apl8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl2/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl10/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-oa-metric-set-id:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-glk4/igt@perf@invalid-oa-metric-set-id.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-glk7/igt@perf@invalid-oa-metric-set-id.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-kbl2/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9109/shard-skl6/igt@kms_setmode@basic.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18648/shard-skl1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9109 -&gt; Patchwork_18648</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9109: 96e1886f0244ba6e235730b1da9146e71ed6ff3c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5803: 33f07391e5f6a8d9323e471c81db3f29f91ed4d7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18648: f90f514efc94c242f2cadbcfd46c86cb2466e524 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1879954420614929698==--

--===============0511440319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0511440319==--
