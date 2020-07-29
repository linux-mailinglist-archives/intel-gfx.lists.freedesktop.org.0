Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8B82318E4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jul 2020 07:09:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710BF6E43D;
	Wed, 29 Jul 2020 05:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3B1A6E43B;
 Wed, 29 Jul 2020 05:09:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CB9E0A47E2;
 Wed, 29 Jul 2020 05:09:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Jul 2020 05:09:28 -0000
Message-ID: <159599936882.20644.12487930296969841622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200728153049.27682-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200728153049.27682-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_Add_a_couple_of_missing?=
 =?utf-8?q?_i915=5Factive=5Ffini=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0279176312=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0279176312==
Content-Type: multipart/alternative;
 boundary="===============1153867605869237197=="

--===============1153867605869237197==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915: Add a couple of missing i915_active_fini()
URL   : https://patchwork.freedesktop.org/series/79992/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8807_full -> Patchwork_18257_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18257_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18257_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18257_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw8/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw1/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb@bc-vga1-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_flip@2x-nonexisting-fb@bc-vga1-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_18257_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#1635])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl2/igt@gem_partial_pwrite_pread@reads.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl3/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#198])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl3/igt@gem_workarounds@suspend-resume.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl10/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][12] -> [INCOMPLETE][13] ([i915#636])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@i915_suspend@forcewake.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#2242]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb5/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][16] -> [DMESG-FAIL][17] ([i915#118] / [i915#95]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#1982]) +14 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1635] / [i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][22] -> [FAIL][23] ([i915#96])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-glk:          [PASS][24] -> [INCOMPLETE][25] ([i915#2241])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][26] -> [FAIL][27] ([i915#1635] / [i915#79])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#2240])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_flip@nonexisting-fb@b-dp1:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([i915#2240])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_flip@nonexisting-fb@b-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl1/igt@kms_flip@nonexisting-fb@b-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk3/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk7/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +4 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][40] -> [INCOMPLETE][41] ([i915#155])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145] / [i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][44] -> [DMESG-FAIL][45] ([fdo#108145] / [i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html

  * igt@perf@blocking-parameterized:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#1542])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@perf@blocking-parameterized.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb2/igt@perf@blocking-parameterized.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [DMESG-WARN][50] ([i915#1982]) -> [PASS][51] +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_eio@in-flight-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][52] ([i915#118] / [i915#95]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@gem_exec_whisper@basic-forked.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk5/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][54] ([i915#2190]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:
    - shard-tglb:         [INCOMPLETE][56] ([i915#2242]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb8/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][58] ([i915#118] / [i915#95]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
    - shard-apl:          [DMESG-WARN][60] ([i915#1635] / [i915#1982]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][62] ([i915#300]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:
    - shard-glk:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][66] ([i915#79]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +11 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@nonexisting-fb@a-edp1:
    - shard-iclb:         [INCOMPLETE][70] ([i915#2240]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@kms_flip@nonexisting-fb@a-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb1/igt@kms_flip@nonexisting-fb@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         [DMESG-WARN][72] ([i915#1982]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [DMESG-WARN][74] ([i915#1982]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-iclb:         [INCOMPLETE][76] ([i915#123]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][78] ([i915#1188]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-hsw:          [INCOMPLETE][80] -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][82] ([fdo#109441]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][84] ([i915#1319] / [i915#1958] / [i915#2119]) -> [TIMEOUT][85] ([i915#1319] / [i915#2119])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_content_protection@atomic-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [FAIL][86] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][87] ([fdo#108145] / [i915#1982]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2119]: https://gitlab.freedesktop.org/drm/intel/issues/2119
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2240]: https://gitlab.freedesktop.org/drm/intel/issues/2240
  [i915#2241]: https://gitlab.freedesktop.org/drm/intel/issues/2241
  [i915#2242]: https://gitlab.freedesktop.org/drm/intel/issues/2242
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8807 -> Patchwork_18257

  CI-20190529: 20190529
  CI_DRM_8807: 494850d613c74f24a5799710b346faa5cd12a407 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18257: 88d49f69a5282f430224b3f407c495c7c7b12044 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/index.html

--===============1153867605869237197==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915: Add a couple of missing i915_active_fini()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79992/">https://patchwork.freedesktop.org/series/79992/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8807_full -&gt; Patchwork_18257_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18257_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18257_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18257_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw8/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw1/igt@kms_flip@2x-nonexisting-fb-interruptible@ac-vga1-hdmi-a1.html">INCOMPLETE</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb@bc-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_flip@2x-nonexisting-fb@bc-vga1-hdmi-a1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18257_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl2/igt@gem_partial_pwrite_pread@reads.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl3/igt@gem_partial_pwrite_pread@reads.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl3/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl10/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb5/igt@kms_atomic_transition@plane-all-transition-fencing@edp-1-pipe-c.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2242">i915#2242</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl3/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2241">i915#2241</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb6/igt@kms_flip@nonexisting-fb@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2240">i915#2240</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_flip@nonexisting-fb@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl1/igt@kms_flip@nonexisting-fb@b-dp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2240">i915#2240</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk3/igt@kms_frontbuffer_tracking@fbc-badstride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk7/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@perf@blocking-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb2/igt@perf@blocking-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@gem_eio@in-flight-suspend.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk5/igt@gem_exec_whisper@basic-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb6/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2242">i915#2242</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb8/igt@kms_atomic_transition@plane-all-transition@edp-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-apl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-apl8/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk9/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-64x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb4/igt@kms_flip@nonexisting-fb@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2240">i915#2240</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb1/igt@kms_flip@nonexisting-fb@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb7/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-128:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-hsw6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-hsw8/igt@kms_plane_cursor@pipe-b-viewport-size-128.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-kbl6/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-kbl1/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2119">i915#2119</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8807/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18257/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-icl-1065g7 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8807 -&gt; Patchwork_18257</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8807: 494850d613c74f24a5799710b346faa5cd12a407 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5749: 2fef871e791ceab7841b899691c443167550173d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18257: 88d49f69a5282f430224b3f407c495c7c7b12044 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1153867605869237197==--

--===============0279176312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0279176312==--
