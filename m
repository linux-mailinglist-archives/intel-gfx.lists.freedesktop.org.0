Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D2A2C544E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 13:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85EAC6E940;
	Thu, 26 Nov 2020 12:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 103D96E938;
 Thu, 26 Nov 2020 12:58:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00710A363D;
 Thu, 26 Nov 2020 12:58:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 26 Nov 2020 12:58:01 -0000
Message-ID: <160639548199.4112.12392280039549490096@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126073722.19107-1-anshuman.gupta@intel.com>
In-Reply-To: <20201126073722.19107-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============2062725906=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2062725906==
Content-Type: multipart/alternative;
 boundary="===============4103793148396074685=="

--===============4103793148396074685==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev5)
URL   : https://patchwork.freedesktop.org/series/82998/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9392_full -> Patchwork_18986_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18986_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18986_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18986_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_content_protection@dp-mst-lic-type-1} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * {igt@kms_content_protection@dp-mst-type-0} (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-apl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@kms_content_protection@srm:
    - shard-skl:          [SKIP][5] ([fdo#109271]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl3/igt@kms_content_protection@srm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl8/igt@kms_content_protection@srm.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9392_full and Patchwork_18986_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (4) ###

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - Statuses : 7 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-0:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-1:
    - Statuses : 8 skip(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_18986_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-kbl:          [PASS][11] -> [SKIP][12] ([fdo#109271]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-glk:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk9/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([i915#2635])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1185])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb4/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#155] / [i915#794])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-glk:          [PASS][21] -> [INCOMPLETE][22] ([i915#2199] / [i915#2635])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#129])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl1/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@kms_color@pipe-c-ctm-blue-to-red.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#129])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl8/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][29] -> [INCOMPLETE][30] ([i915#2405] / [i915#2635])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-kbl:          [PASS][31] -> [INCOMPLETE][32] ([i915#155] / [i915#2405])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][33] -> [SKIP][34] ([fdo#109271]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-glk:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982]) +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982]) +36 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl3/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#96])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][43] -> [FAIL][44] ([i915#2295] / [i915#2370])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#2346]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][47] -> [INCOMPLETE][48] ([i915#2635])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk7/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][49] -> [INCOMPLETE][50] ([i915#2637])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][51] -> [FAIL][52] ([i915#2598])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:
    - shard-kbl:          [PASS][53] -> [DMESG-WARN][54] ([i915#1982])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#49]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglb:         [PASS][57] -> [DMESG-WARN][58] ([i915#1982]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#49])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][61] -> [INCOMPLETE][62] ([i915#1185] / [i915#123])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglb:         [PASS][63] -> [SKIP][64] ([i915#433])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb8/igt@kms_hdmi_inject@inject-audio.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb2/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][65] -> [DMESG-FAIL][66] ([fdo#108145] / [i915#1982])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#2657])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk3/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109441]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
    - shard-hsw:          [PASS][71] -> [SKIP][72] ([fdo#109271]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109278])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
    - shard-apl:          [PASS][75] -> [SKIP][76] ([fdo#109271]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][77] -> [DMESG-WARN][78] ([i915#1982] / [i915#262])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@perf_pmu@module-unload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl9/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][79] -> [INCOMPLETE][80] ([i915#409])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb7/igt@prime_vgem@sync@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb7/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          [INCOMPLETE][81] ([i915#2283] / [i915#2405]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@device_reset@unbind-reset-rebind.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@device_reset@unbind-reset-rebind.html
    - shard-apl:          [INCOMPLETE][83] ([i915#2283] / [i915#2405]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl6/igt@device_reset@unbind-reset-rebind.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl4/igt@device_reset@unbind-reset-rebind.html
    - shard-kbl:          [INCOMPLETE][85] ([i915#2283] / [i915#2405]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl3/igt@device_reset@unbind-reset-rebind.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@device_reset@unbind-reset-rebind.html
    - shard-tglb:         [INCOMPLETE][87] ([i915#1602] / [i915#750]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@device_reset@unbind-reset-rebind.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb3/igt@device_reset@unbind-reset-rebind.html
    - shard-iclb:         [INCOMPLETE][89] ([i915#2283] / [i915#2405]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@device_reset@unbind-reset-rebind.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][91] ([i915#2389]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-hsw:          [FAIL][93] ([i915#2389]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [INCOMPLETE][95] -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_module_load@reload:
    - shard-hsw:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@i915_module_load@reload.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw6/igt@i915_module_load@reload.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-iclb:         [INCOMPLETE][99] ([i915#1185] / [i915#2369]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@i915_pm_backlight@fade_with_suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb5/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][101] ([i915#454]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][103] ([i915#1519]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-glk:          [SKIP][105] ([fdo#109271]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk7/igt@i915_pm_rpm@gem-execbuf-stress.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html
    - shard-apl:          [SKIP][107] ([fdo#109271]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl3/igt@i915_pm_rpm@gem-execbuf-stress.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl6/igt@i915_pm_rpm@gem-execbuf-stress.html
    - shard-kbl:          [SKIP][109] ([fdo#109271]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl2/igt@i915_pm_rpm@gem-execbuf-stress.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@i915_pm_rpm@gem-execbuf-stress.html
    - shard-hsw:          [SKIP][111] ([fdo#109271]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][113] ([i915#151]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-tglb:         [FAIL][115] ([i915#2521]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb3/igt@kms_async_flips@alternate-sync-async-flip.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][117] ([i915#1149]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_color@pipe-a-gamma.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb6/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][119] ([i915#54]) -> [PASS][120] +4 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:
    - shard-apl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122] +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - shard-glk:          [DMESG-WARN][123] ([i915#1982]) -> [PASS][124] +4 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][125] ([i915#2370]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-skl:          [SKIP][127] ([fdo#109271]) -> [PASS][128] +11 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-skl:          [INCOMPLETE][129] ([i915#198]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][131] ([i915#2055] / [i915#2295]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * {igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a}:
    - shard-skl:          [DMESG-WARN][133] ([i915#1982]) -> [PASS][134] +53 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [DMESG-WARN][135] ([i915#1982]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
    - shard-kbl:          [FAIL][137] ([i915#49]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
    - shard-apl:          [FAIL][139] ([i915#49]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [DMESG-WARN][141] ([i915#1982]) -> [PASS][142] +1 similar issue
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][143] ([i915#1188]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl8/igt@kms_hdr@bpc-switch.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-apl:          [DMESG-WARN][145] ([i915#1982] / [i915#2621]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][147] ([fdo#109441]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-wait-forked-busy:
    - shard-kbl:          [DMESG-WARN][149] ([i915#1982]) -> [PASS][150] +8 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl7/igt@kms_vblank@pipe-b-wait-forked-busy.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][151] ([i915#180]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@blocking:
    - shard-skl:          [FAIL][153] ([i915#1542]) -> [PASS][154] +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@perf@blocking.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl2/igt@perf@blocking.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-skl:          [FAIL][155] ([i915#1732]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-reb

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html

--===============4103793148396074685==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82998/">https://patchwork.freedesktop.org/series/82998/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9392_full -&gt; Patchwork_18986_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18986_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18986_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18986_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_content_protection@dp-mst-lic-type-1} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb7/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-type-0} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@srm:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl3/igt@kms_content_protection@srm.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl8/igt@kms_content_protection@srm.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9392_full and Patchwork_18986_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18986_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@gem_exec_whisper@basic-contexts-forked.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk9/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#2635])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb7/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb4/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#1185])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#155] / [i915#794])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk7/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk4/igt@i915_suspend@fence-restore-tiled2untiled.html">INCOMPLETE</a> ([i915#2199] / [i915#2635])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl1/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@kms_color@pipe-c-ctm-blue-to-red.html">FAIL</a> ([i915#129])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl8/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_color@pipe-c-ctm-blue-to-red.html">FAIL</a> ([i915#129])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html">FAIL</a> ([i915#54]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#2405] / [i915#2635])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#2405])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html">DMESG-WARN</a> ([i915#1982]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">DMESG-WARN</a> ([i915#1982]) +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl3/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">FAIL</a> ([i915#96])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">FAIL</a> ([i915#2295] / [i915#2370])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">FAIL</a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk7/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> ([i915#2635])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html">INCOMPLETE</a> ([i915#2637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl6/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> ([i915#49]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb1/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> ([i915#1185] / [i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb8/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb2/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">DMESG-FAIL</a> ([fdo#108145] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk3/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">SKIP</a> ([fdo#109278])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl9/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982] / [i915#262])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb7/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb7/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@device_reset@unbind-reset-rebind.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl6/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl4/igt@device_reset@unbind-reset-rebind.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl3/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl1/igt@device_reset@unbind-reset-rebind.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#1602] / [i915#750]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb3/igt@device_reset@unbind-reset-rebind.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@device_reset@unbind-reset-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([i915#2389]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw6/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> ([i915#1185] / [i915#2369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb5/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw2/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk7/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl3/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl6/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl2/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a></p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw4/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> ([i915#151]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb3/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-gamma:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb2/igt@kms_color@pipe-a-gamma.html">FAIL</a> ([i915#1149]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb6/igt@kms_color@pipe-a-gamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-glk5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-glk6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> ([i915#2370]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">INCOMPLETE</a> ([i915#2055] / [i915#2295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl3/igt@kms_flip_tiling@flip-to-yf-tiled@edp-1-pipe-a.html">PASS</a> +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl3/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl8/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-apl7/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> ([i915#1982] / [i915#2621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-apl1/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl6/igt@kms_vblank@pipe-b-wait-forked-busy.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl7/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl6/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl2/igt@perf@blocking.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/shard-skl10/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> ([i915#1732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/shard-skl5/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@device_reset@unbind-reset-reb</li>
</ul>

</body>
</html>

--===============4103793148396074685==--

--===============2062725906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2062725906==--
