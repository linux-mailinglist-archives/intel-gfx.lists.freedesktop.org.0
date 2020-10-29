Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DAC29F3A5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 18:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5216E8EB;
	Thu, 29 Oct 2020 17:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C94E96E8EB;
 Thu, 29 Oct 2020 17:54:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C130CA0091;
 Thu, 29 Oct 2020 17:54:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 29 Oct 2020 17:54:44 -0000
Message-ID: <160399408475.1422.14557230419084763153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1804777004=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1804777004==
Content-Type: multipart/alternative;
 boundary="===============5042302379675426936=="

--===============5042302379675426936==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev2)
URL   : https://patchwork.freedesktop.org/series/82998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9206_full -> Patchwork_18788_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18788_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_parallel@engines@userptr}:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw6/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@gem_exec_parallel@engines@userptr.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3 (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9206_full and Patchwork_18788_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (4) ###

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_content_protection@dp-mst-type-0:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-1:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  


### New Piglit tests (3) ###

  * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat4-dmat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat4x3-double:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18788_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@empty-nonblock:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk7/igt@drm_read@empty-nonblock.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk5/igt@drm_read@empty-nonblock.html

  * igt@gem_exec_parallel@engines@contexts:
    - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#82])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb5/igt@gem_exec_parallel@engines@contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-hsw:          [PASS][8] -> [FAIL][9] ([i915#1888])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@live@evict:
    - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#198])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@i915_selftest@live@evict.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl3/igt@i915_selftest@live@evict.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][12] -> [INCOMPLETE][13] ([i915#1888])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +6 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#2370])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1635] / [i915#1982]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw2/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-snb:          [PASS][24] -> [FAIL][25] ([i915#2546])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([i915#1635] / [i915#2606])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#2606])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#123]) +3 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#123] / [i915#2606])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#2606])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl7/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#1635] / [i915#31])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl3/igt@kms_setmode@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-wait-forked-busy:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html

  * igt@perf@oa-exponents:
    - shard-apl:          [PASS][40] -> [SKIP][41] ([fdo#109271] / [i915#1354] / [i915#1635]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@perf@oa-exponents.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt@perf@oa-exponents.html

  * igt@perf@rc6-disable:
    - shard-hsw:          [PASS][42] -> [SKIP][43] ([fdo#109271]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw2/igt@perf@rc6-disable.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@perf@rc6-disable.html
    - shard-kbl:          [PASS][44] -> [SKIP][45] ([fdo#109271] / [i915#1354]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl7/igt@perf@rc6-disable.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl4/igt@perf@rc6-disable.html

  * igt@perf_pmu@busy-idle-no-semaphores@rcs0:
    - shard-hsw:          [PASS][46] -> [FAIL][47] ([i915#2614])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - shard-snb:          [INCOMPLETE][48] ([i915#82]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@gem_exec_create@basic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk5/igt@gem_exec_gttfill@all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk7/igt@gem_exec_gttfill@all.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][52] ([i915#2521]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a:
    - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
    - shard-skl:          [FAIL][58] ([i915#54]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [INCOMPLETE][60] ([i915#1635]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:
    - shard-glk:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-hsw:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-skl:          [INCOMPLETE][66] ([i915#123]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-skl:          [INCOMPLETE][68] ([i915#123] / [i915#2606]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - shard-skl:          [SKIP][70] ([fdo#109271]) -> [PASS][71] +7 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-kbl:          [DMESG-WARN][72] ([i915#165] / [i915#78]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-apl:          [DMESG-WARN][74] ([i915#1635] / [i915#1982]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl8/igt@kms_vblank@pipe-c-wait-forked-busy.html

  
#### Warnings ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-hsw:          [FAIL][76] -> [WARN][77] ([i915#2283])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-skl:          [DMESG-WARN][78] ([i915#1982]) -> [FAIL][79] ([i915#699])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_flip_tiling@flip-y-tiled.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl1/igt@kms_flip_tiling@flip-y-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-skl:          [INCOMPLETE][80] ([i915#123] / [i915#2606]) -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-skl:          [SKIP][82] ([fdo#109271]) -> [INCOMPLETE][83] ([i915#123] / [i915#2606])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][84], [FAIL][85]) ([i915#1611] / [i915#1635] / [i915#1814]) -> [FAIL][86] ([fdo#109271] / [i915#1635] / [i915#1814])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl4/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([i915#1764] / [i915#1814] / [i915#456] / [k.org#205379]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#1602] / [i915#1764] / [i915#1814] / [i915#456] / [k.org#205379])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1354]: https://gitlab.freedesktop.org/drm/intel/issues/1354
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
  [i915#2614]: https://gitlab.freedesktop.org/drm/intel/issues/2614
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5827 -> IGTPW_5090
  * Linux: CI_DRM_9206 -> Patchwork_18788

  CI-20190529: 20190529
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5090: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5090/index.html
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18788: d046e7f1a967ed742d1fdecb23c6eb56cddcc95f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html

--===============5042302379675426936==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (=
rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/82998/">https://patchwork.freedesktop.org/series/82998/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18788/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18788/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9206_full -&gt; Patchwork_18788_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18788_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_exec_parallel@engines@userptr}:<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw6/igt@gem_exec_parallel@engines@userptr.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788=
/shard-hsw4/igt@gem_exec_parallel@engines@userptr.html">FAIL</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3 (NEW=
):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18788/pig-icl-1065g7/spec@glsl-4.00@execution@built=
-in-functions@gs-op-mult-dmat3-dmat3.html">INCOMPLETE</a> +2 similar issues=
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9206_full and Patchwork_18=
788_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New Piglit tests (3)</h3>
<ul>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat4-dmat2x4:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3:</p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat4x3-double:</=
p>
<ul>
<li>Statuses : 1 incomplete(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18788_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@empty-nonblock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-glk7/igt@drm_read@empty-nonblock.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk=
5/igt@drm_read@empty-nonblock.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-snb5/igt@gem_exec_parallel@engines@contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1878=
8/shard-snb4/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8788/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl9/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-sk=
l3/igt@i915_selftest@live@evict.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1878=
8/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor=
-atomic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18788/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-befo=
re-cursor-atomic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18788/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#23=
70</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18788/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-ytiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18788/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw2/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18788/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-=
a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-snb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mma=
p-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18788/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-dr=
aw-mmap-wc.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
788/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#16=
35</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2606">i=
915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-in=
dfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-cur-indfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-spr-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/123">i915#123</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18788/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-prim=
scrn-spr-indfb-onoff.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/123">i915#123</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl=
7/igt@kms_psr@cursor_mmap_gtt.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt=
@kms_setmode@basic.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1878=
8/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl7/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt=
@perf@oa-exponents.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1354">i915#1354</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1635">i915#1635</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@rc6-disable:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9206/shard-hsw2/igt@perf@rc6-disable.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@pe=
rf@rc6-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9206/shard-kbl7/igt@perf@rc6-disable.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl4/igt@pe=
rf@rc6-disable.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1354">i915#1354</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-no-semaphores@rcs0:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8788/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2614">i915#2614</=
a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-snb2/igt@gem_exec_create@basic.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/sha=
rd-snb4/igt@gem_exec_create@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-glk5/igt@gem_exec_gttfill@all.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/=
shard-glk7/igt@gem_exec_gttfill@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-event=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18788/shard-kbl1/igt@kms_async_flips@async-flip-with-page-f=
lip-events.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp=
-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl7/igt@kms_atomic_transition@plane-use-after-nonblocki=
ng-unbind-fencing@edp-1-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms=
_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a.=
html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18788/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18788/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transpare=
nt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635=
">i915#1635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18788/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18788/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256=
-left-edge.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untile=
d.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18788/shard-hsw2/igt@kms_draw_crc@draw-method-xrgb888=
8-pwrite-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-sh=
rfb-draw-blt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/123">i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18788/shard-skl4/igt@kms_frontbuffer_trackin=
g@psr-1p-offscren-pri-shrfb-draw-blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-=
plflip-blt.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/123">i915#123</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl7/igt@kms_frontbuffer_tra=
cking@psr-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequen=
ce.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18788/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a=
-frame-sequence.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-x:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i91=
5#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/78">=
i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18788/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl1/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">=
i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18788/shard-apl8/igt@kms_vblank@pipe-c-wait-forked-busy.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html">FAIL</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1878=
8/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-y-tiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl8/igt@kms_flip_tiling@flip-y-tiled.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18788/shard-skl1/igt@kms_flip_tiling@flip-y-tiled.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/699">i915#699</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-in=
dfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/123">i915#123</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuf=
fer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-modesetfro=
mbusy.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/123">i915#123</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1814">i915#1814</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18788/shard-apl4/igt@runner@aborted.html">FAI=
L</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9206/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_9206/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9=
206/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206=
/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/sh=
ard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard=
-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tg=
lb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runne=
r@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1764">i915#1764</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/456">i915#456</a> / <a href=3D"https://bugzilla.kern=
el.org/show_bug.cgi?id=3D205379">k.org#205379</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18788/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tgl=
b8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shar=
d-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788=
/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18788/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18788/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18788/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb3/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tgl=
b6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shar=
d-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1602">i=
915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
764">i915#1764</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/456">i915#456</a> / <a href=3D"https://bugzilla.kernel.org/show_=
bug.cgi?id=3D205379">k.org#205379</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5827 -&gt; IGTPW_5090</li>
<li>Linux: CI_DRM_9206 -&gt; Patchwork_18788</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGTPW_5090: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5090/index.htm=
l<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18788: d046e7f1a967ed742d1fdecb23c6eb56cddcc95f @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5042302379675426936==--

--===============1804777004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1804777004==--
