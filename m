Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 563752A2F69
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 17:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 841E56E550;
	Mon,  2 Nov 2020 16:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4C216E550;
 Mon,  2 Nov 2020 16:13:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0C8EA47DF;
 Mon,  2 Nov 2020 16:13:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Fred Gao" <fred.gao@intel.com>
Date: Mon, 02 Nov 2020 16:13:57 -0000
Message-ID: <160433363769.26396.8536245496407267322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200929161038.15465-1-fred.gao@intel.com>
In-Reply-To: <20200929161038.15465-1-fred.gao@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgdmZp?=
 =?utf-8?q?o/pci=3A_Refine_Intel_IGD_OpRegion_support_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0292222655=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0292222655==
Content-Type: multipart/alternative;
 boundary="===============6596854952614015993=="

--===============6596854952614015993==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: vfio/pci: Refine Intel IGD OpRegion support (rev3)
URL   : https://patchwork.freedesktop.org/series/79293/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9242_full -> Patchwork_18825_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18825_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18825_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18825_full:

### IGT changes ###

#### Warnings ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-hsw:          [WARN][1] ([i915#2283]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9242_full and Patchwork_18825_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18825_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982] / [k.org#205379])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb8/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb3/igt@i915_module_load@reload.html

  * igt@kms_busy@basic-flip-pipe-b:
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb2/igt@kms_busy@basic-flip-pipe-b.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#54]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl8/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#2346])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#2483])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb3/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb3/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1982]) +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109642] / [fdo#111068])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-query-idle-hang:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1982]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-kbl7/igt@kms_vblank@pipe-a-query-idle-hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-kbl7/igt@kms_vblank@pipe-a-query-idle-hang.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][33] ([i915#2190]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [FAIL][35] ([i915#1888]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][37] -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][39] ([i915#1519]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-glk:          [FAIL][41] ([i915#2521]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk4/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk1/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-apl:          [FAIL][43] ([i915#1635] / [i915#2521]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk9/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a:
    - shard-hsw:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][51] ([i915#300]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][53] ([i915#2370]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][55] ([i915#2346]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-skl:          [DMESG-WARN][57] ([i915#1982]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_flip@absolute-wf_vblank@a-dp1:
    - shard-kbl:          [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-kbl4/igt@kms_flip@absolute-wf_vblank@a-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-kbl4/igt@kms_flip@absolute-wf_vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [FAIL][63] ([i915#2122]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
    - shard-iclb:         [DMESG-WARN][65] ([i915#1982]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
    - shard-skl:          [FAIL][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl10/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-wait-forked-busy-hang:
    - shard-apl:          [DMESG-WARN][71] ([i915#1635] / [i915#1982]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl7/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl4/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html

  * igt@perf@non-system-wide-paranoid:
    - shard-hsw:          [SKIP][73] ([fdo#109271]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@perf@non-system-wide-paranoid.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@perf@non-system-wide-paranoid.html

  
#### Warnings ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [DMESG-WARN][75] ([i915#1436]) -> [INCOMPLETE][76] ([i915#1436] / [i915#456])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb1/igt@i915_pm_backlight@fade_with_suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-tglb:         [DMESG-WARN][77] ([i915#2411]) -> [INCOMPLETE][78] ([i915#1436] / [i915#456])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [FAIL][80] ([i915#2122])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [DMESG-FAIL][81] ([fdo#108145] / [i915#1635] / [i915#1982]) -> [FAIL][82] ([fdo#108145] / [i915#1635] / [i915#265])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][83] ([i915#2439]) -> ([FAIL][84], [FAIL][85]) ([i915#2248] / [i915#2439])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2248]: https://gitlab.freedesktop.org/drm/intel/issues/2248
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2483]: https://gitlab.freedesktop.org/drm/intel/issues/2483
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9242 -> Patchwork_18825

  CI-20190529: 20190529
  CI_DRM_9242: 43ba45463378aca64ef7a85c9d487913f8239b8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18825: 06f2b2ea5338d5fe863062974724098307f12244 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/index.html

--===============6596854952614015993==
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
<tr><td><b>Series:</b></td><td>vfio/pci: Refine Intel IGD OpRegion support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79293/">https://patchwork.freedesktop.org/series/79293/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9242_full -&gt; Patchwork_18825_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18825_full need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18825_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18825_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@hotrebind-lateclose:<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9242_full and Patchwork_18825_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 200 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18825_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk5/igt@gem_exec_whisper@basic-contexts-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb8/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb3/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-flip-pipe-b:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb2/igt@kms_busy@basic-flip-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@kms_busy@basic-flip-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl8/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl7/igt@kms_cursor_edge_walk@pipe-b-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb3/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb3/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2483">i915#2483</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb8/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-idle-hang:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-kbl7/igt@kms_vblank@pipe-a-query-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-kbl7/igt@kms_vblank@pipe-a-query-idle-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk4/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk1/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl8/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-glk8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-glk9/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@hdmi-a-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@vga-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/300">i915#300</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2370">i915#2370</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-kbl4/igt@kms_flip@absolute-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-kbl4/igt@kms_flip@absolute-wf_vblank@a-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl10/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy-hang:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl7/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl4/igt@kms_vblank@pipe-b-wait-forked-busy-hang.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@non-system-wide-paranoid:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-hsw1/igt@perf@non-system-wide-paranoid.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-hsw1/igt@perf@non-system-wide-paranoid.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb1/igt@i915_pm_backlight@fade_with_suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/456">i915#456</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9242/shard-tglb1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18825/shard-tglb5/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2248">i915#2248</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9242 -&gt; Patchwork_18825</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9242: 43ba45463378aca64ef7a85c9d487913f8239b8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18825: 06f2b2ea5338d5fe863062974724098307f12244 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6596854952614015993==--

--===============0292222655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0292222655==--
