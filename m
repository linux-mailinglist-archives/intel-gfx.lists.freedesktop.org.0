Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9701ED4BB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 19:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4AA89D86;
	Wed,  3 Jun 2020 17:10:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 591AF89D7F;
 Wed,  3 Jun 2020 17:10:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 53A3DA00E7;
 Wed,  3 Jun 2020 17:10:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jun 2020 17:10:11 -0000
Message-ID: <159120421131.12268.18369030796443070150@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200603104657.25651-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200603104657.25651-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Suppress_the_error_message_for_GT_init_failure_on_e?=
 =?utf-8?q?rror_injection?=
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

Series: drm/i915/gt: Suppress the error message for GT init failure on error injection
URL   : https://patchwork.freedesktop.org/series/77949/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8575_full -> Patchwork_17850_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17850_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#93] / [i915#95]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-kbl3/igt@gem_exec_whisper@basic-queues-priority-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-kbl6/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#644])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl7/igt@i915_pm_rpm@fences-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl6/igt@i915_pm_rpm@fences-dpms.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl7/igt@kms_color@pipe-b-ctm-negative.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#95]) +17 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         [PASS][21] -> [DMESG-WARN][22] ([i915#1982])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl2/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#648] / [i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
#### Possible fixes ####

  * igt@gem_ctx_param@basic:
    - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-glk8/igt@gem_ctx_param@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-glk2/igt@gem_ctx_param@basic.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-apl:          [DMESG-WARN][31] ([i915#95]) -> [PASS][32] +19 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl7/igt@gem_exec_nop@basic-parallel.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl8/igt@gem_exec_nop@basic-parallel.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglb:         [DMESG-WARN][33] ([i915#1992]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-tglb1/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html

  * {igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-c}:
    - shard-tglb:         [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-tglb1/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-c.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-tglb5/igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-c.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [DMESG-FAIL][37] ([i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-glk2/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-apl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl8/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_color@pipe-c-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl8/igt@kms_color@pipe-c-ctm-green-to-red.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl6/igt@kms_color@pipe-c-ctm-green-to-red.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-kbl:          [DMESG-WARN][43] ([i915#93] / [i915#95]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-kbl3/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-kbl6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-dp1}:
    - shard-apl:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-iclb:         [INCOMPLETE][57] ([i915#1078] / [i915#1185]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][59] ([i915#468]) -> [FAIL][60] ([i915#1899])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][61] ([i915#1515]) -> [WARN][62] ([i915#1515])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][63] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][64] ([i915#1319] / [i915#1635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl7/igt@kms_content_protection@atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][65] ([i915#1319]) -> [FAIL][66] ([fdo#110321] / [fdo#110336])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][67] ([i915#1319]) -> [FAIL][68] ([fdo#110321])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl3/igt@kms_content_protection@lic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][69] ([fdo#110321]) -> [TIMEOUT][70] ([i915#1319])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-apl2/igt@kms_content_protection@srm.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-FAIL][71] ([i915#1925] / [i915#1926]) -> [DMESG-WARN][72] ([i915#1926])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-glk1/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [DMESG-FAIL][73] ([i915#1925] / [i915#1926]) -> [DMESG-WARN][74] ([i915#1927])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8575/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/shard-glk2/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1992]: https://gitlab.freedesktop.org/drm/intel/issues/1992
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8575 -> Patchwork_17850

  CI-20190529: 20190529
  CI_DRM_8575: b261605291bae8f267174f92df7513a3a7184573 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5692: c98c9ad6d06c4eb8b05b23ef0bbe0159730e387f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17850: cde9b765b01965ff9ab1c632022242467263c608 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17850/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
