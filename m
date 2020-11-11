Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E882AF7CD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 19:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6BF6E059;
	Wed, 11 Nov 2020 18:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB29689FF7;
 Wed, 11 Nov 2020 18:16:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB85CA8835;
 Wed, 11 Nov 2020 18:16:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 11 Nov 2020 18:16:42 -0000
Message-ID: <160511860286.4718.6669125160676874100@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201111062051.11529-1-anshuman.gupta@intel.com>
In-Reply-To: <20201111062051.11529-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============2114421489=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2114421489==
Content-Type: multipart/alternative;
 boundary="===============8948645330222885812=="

--===============8948645330222885812==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev4)
URL   : https://patchwork.freedesktop.org/series/82998/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9307_full -> Patchwork_18883_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18883_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18883_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18883_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@forked:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb3/igt@gem_exec_create@forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb4/igt@gem_exec_create@forked.html

  * igt@gem_wait@write-wait@vcs0:
    - shard-snb:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb5/igt@gem_wait@write-wait@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_wait@write-wait@vcs0.html

  * {igt@kms_content_protection@dp-mst-lic-type-1} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * {igt@kms_content_protection@dp-mst-type-0} (NEW):
    - shard-tglb:         NOTRUN -> [SKIP][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-tglb:         ([FAIL][7], [FAIL][8]) ([i915#1602] / [i915#2439]) -> [FAIL][9]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb1/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@runner@aborted.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9307_full and Patchwork_18883_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 200 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (4) ###

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - Statuses : 8 skip(s)
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

  Here are the changes found in Patchwork_18883_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-glk:          [PASS][10] -> [INCOMPLETE][11] ([i915#2283])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk2/igt@device_reset@unbind-reset-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk5/igt@device_reset@unbind-reset-rebind.html
    - shard-apl:          [PASS][12] -> [INCOMPLETE][13] ([i915#1635] / [i915#2283])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@device_reset@unbind-reset-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl4/igt@device_reset@unbind-reset-rebind.html
    - shard-kbl:          [PASS][14] -> [INCOMPLETE][15] ([i915#2283])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@device_reset@unbind-reset-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@device_reset@unbind-reset-rebind.html
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#1602] / [i915#750])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@device_reset@unbind-reset-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@device_reset@unbind-reset-rebind.html
    - shard-iclb:         [PASS][18] -> [INCOMPLETE][19] ([i915#2283])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb5/igt@device_reset@unbind-reset-rebind.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb3/igt@device_reset@unbind-reset-rebind.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb6/igt@gem_eio@kms.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_wait@write-wait@bcs0:
    - shard-snb:          [PASS][24] -> [FAIL][25] ([i915#2256])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb5/igt@gem_wait@write-wait@bcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_wait@write-wait@bcs0.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-kbl:          [PASS][26] -> [SKIP][27] ([fdo#109271])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-glk:          [PASS][28] -> [SKIP][29] ([fdo#109271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-apl:          [PASS][30] -> [SKIP][31] ([fdo#109271] / [i915#1635])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#54]) +5 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982]) +4 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#1635] / [i915#1982]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#2346])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#1982]) +34 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1:
    - shard-hsw:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#2598])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#49])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#49]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-skl:          [PASS][50] -> [SKIP][51] ([fdo#109271]) +15 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-apl:          [PASS][52] -> [FAIL][53] ([i915#1635] / [i915#247])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#247])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#247])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl4/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-skl:          [PASS][58] -> [CRASH][59] ([i915#2212])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_psr@cursor_mmap_gtt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#31])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_setmode@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#31])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@kms_setmode@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#31])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk5/igt@kms_setmode@basic.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][68] -> [FAIL][69] ([i915#31])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@kms_setmode@basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@kms_setmode@basic.html
    - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#31])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@kms_setmode@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [PASS][72] -> [DMESG-WARN][73] ([i915#1982]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@perf@non-sampling-read-error:
    - shard-tglb:         [PASS][74] -> [SKIP][75] ([i915#1354])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@perf@non-sampling-read-error.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@perf@non-sampling-read-error.html
    - shard-skl:          [PASS][76] -> [SKIP][77] ([fdo#109271] / [i915#1354])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@perf@non-sampling-read-error.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@perf@non-sampling-read-error.html
    - shard-apl:          [PASS][78] -> [SKIP][79] ([fdo#109271] / [i915#1354] / [i915#1635])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl6/igt@perf@non-sampling-read-error.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@perf@non-sampling-read-error.html
    - shard-glk:          [PASS][80] -> [SKIP][81] ([fdo#109271] / [i915#1354])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk5/igt@perf@non-sampling-read-error.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk6/igt@perf@non-sampling-read-error.html
    - shard-hsw:          [PASS][82] -> [SKIP][83] ([fdo#109271]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw4/igt@perf@non-sampling-read-error.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw1/igt@perf@non-sampling-read-error.html
    - shard-kbl:          [PASS][84] -> [SKIP][85] ([fdo#109271] / [i915#1354])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@perf@non-sampling-read-error.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@perf@non-sampling-read-error.html
    - shard-iclb:         [PASS][86] -> [SKIP][87] ([i915#1354])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@perf@non-sampling-read-error.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@perf@non-sampling-read-error.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#1542])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl5/igt@perf@polling-parameterized.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl3/igt@perf@polling-parameterized.html

  * igt@perf_pmu@module-unload:
    - shard-tglb:         [PASS][90] -> [DMESG-WARN][91] ([i915#1982]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@perf_pmu@module-unload.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb3/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-hsw:          [DMESG-WARN][92] ([i915#2637]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw8/igt@gem_eio@in-flight-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@gem_eio@in-flight-suspend.html
    - shard-apl:          [DMESG-WARN][94] ([i915#1635] / [i915#2635]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@gem_eio@in-flight-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_create@basic:
    - shard-snb:          [FAIL][96] ([i915#1037]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb2/igt@gem_exec_create@basic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_exec_create@basic.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [FAIL][98] -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@gem_exec_create@forked.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk5/igt@gem_exec_create@forked.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-iclb:         [DMESG-WARN][100] ([i915#1982]) -> [PASS][101] +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][102] ([i915#2190]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-hsw:          [FAIL][104] ([i915#1888]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][106] ([i915#1436] / [i915#716]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][108] ([i915#198]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl1/igt@i915_suspend@sysfs-reader.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@i915_suspend@sysfs-reader.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-kbl:          [FAIL][110] ([i915#2521]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][112] ([i915#1982]) -> [PASS][113] +36 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][114] ([i915#54]) -> [PASS][115] +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-hsw:          [DMESG-WARN][116] ([i915#1982]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw6/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][118] ([i915#1982]) -> [PASS][119] +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][120] ([i915#2370]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][122] ([i915#2346]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-apl:          [DMESG-WARN][124] ([i915#1635] / [i915#1982]) -> [PASS][125] +6 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][126] ([i915#1982]) -> [PASS][127] +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl2/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [FAIL][128] ([i915#79]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][130] ([i915#2122]) -> [PASS][131] +2 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-snb:          [FAIL][132] ([i915#2546]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][134] ([i915#1982]) -> [PASS][135] +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-skl:          [SKIP][136] ([fdo#109271]) -> [PASS][137] +4 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][138] ([i915#1188]) -> [PASS][139] +1 similar issue
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-position-hole-pipe-a-planes:
    - shard-apl:          [FAIL][140] ([i915#1635] / [i915#2472]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl1/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_plane@plane-position-hole-pipe-a-planes.html
    - shard-kbl:          [FAIL][142] ([i915#2472]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl6/igt@kms_plane@plane-position-hole-pipe-a-planes.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl4/igt@kms_plane@plane-position-hole-pipe-a-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-skl:          [DMESG-WARN][144] ([i915#1982] / [i915#2621]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl4/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-iclb:         [INCOMPLETE][148] ([i915#1185]) -> [PASS][149] +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
    - shard-kbl:          [INCOMPLETE][150] ([i915#155]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
    - shard-hsw:          [INCOMPLETE][152] ([i915#2637]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
    - shard-glk:          [INCOMPLETE][154] ([i915#2635]) -> [PASS][155] +1 similar issue
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
    - shard-apl:          [INCOMPLETE][156] ([i915#1635] / [i915#2635]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-tglb:         [SKIP][158] ([i915#1354]) -> [PASS][159] +2 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb2/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@invalid-oa-exponent:
    - shard-skl:          [SKIP][160] ([fdo#109271] / [i915#1354]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl9/igt@perf@invalid-oa-exponent.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@perf@invalid-oa-e

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/index.html

--===============8948645330222885812==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82998/">https://patchwork.freedesktop.org/series/82998/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9307_full -&gt; Patchwork_18883_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18883_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18883_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18883_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb3/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb4/igt@gem_exec_create@forked.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@vcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb5/igt@gem_wait@write-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_wait@write-wait@vcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-lic-type-1} (NEW):</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-type-0} (NEW):</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-tglb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@runner@aborted.html">FAIL</a>) ([i915#1602] / [i915#2439]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9307_full and Patchwork_18883_full:</p>
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
<li>Statuses : 8 skip(s)</li>
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
<p>Here are the changes found in Patchwork_18883_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk2/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk5/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl4/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#1635] / [i915#2283])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#1602] / [i915#750])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb5/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb3/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> ([i915#2283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb2/igt@gem_eio@kms.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_wait@write-wait@bcs0:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb5/igt@gem_wait@write-wait@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_wait@write-wait@bcs0.html">FAIL</a> ([i915#2256])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk3/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([fdo#109271] / [i915#1635])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk1/igt@kms_cursor_edge_walk@pipe-a-128x128-top-edge.html">DMESG-WARN</a> ([i915#1982]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl7/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html">DMESG-WARN</a> ([i915#1982]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-vga1.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html">FAIL</a> ([i915#49]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html">SKIP</a> ([fdo#109271]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-c-planes:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html">FAIL</a> ([i915#1635] / [i915#247])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@kms_plane@plane-position-covered-pipe-c-planes.html">FAIL</a> ([i915#247])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl4/igt@kms_plane@plane-position-covered-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@kms_plane@plane-position-covered-pipe-c-planes.html">FAIL</a> ([i915#247])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html">CRASH</a> ([i915#2212])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk6/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl4/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@non-sampling-read-error:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@perf@non-sampling-read-error.html">SKIP</a> ([i915#1354])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl2/igt@perf@non-sampling-read-error.html">SKIP</a> ([fdo#109271] / [i915#1354])</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl6/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@perf@non-sampling-read-error.html">SKIP</a> ([fdo#109271] / [i915#1354] / [i915#1635])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk5/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk6/igt@perf@non-sampling-read-error.html">SKIP</a> ([fdo#109271] / [i915#1354])</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw4/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw1/igt@perf@non-sampling-read-error.html">SKIP</a> ([fdo#109271]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl3/igt@perf@non-sampling-read-error.html">SKIP</a> ([fdo#109271] / [i915#1354])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb6/igt@perf@non-sampling-read-error.html">SKIP</a> ([i915#1354])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl5/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb3/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw8/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#2637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@gem_eio@in-flight-suspend.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl3/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#1635] / [i915#2635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@gem_eio@in-flight-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb2/igt@gem_exec_create@basic.html">FAIL</a> ([i915#1037]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb6/igt@gem_exec_create@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@gem_exec_create@forked.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk5/igt@gem_exec_create@forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb2/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl1/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl2/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl10/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl5/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> +36 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw6/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a> ([i915#2370]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">DMESG-WARN</a> ([i915#1635] / [i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl1/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl2/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-pipe-a-planes:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl1/igt@kms_plane@plane-position-hole-pipe-a-planes.html">FAIL</a> ([i915#1635] / [i915#2472]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_plane@plane-position-hole-pipe-a-planes.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl6/igt@kms_plane@plane-position-hole-pipe-a-planes.html">FAIL</a> ([i915#2472]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl4/igt@kms_plane@plane-position-hole-pipe-a-planes.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl4/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> ([i915#1982] / [i915#2621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-iclb1/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#1185]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-iclb4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#155]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-hsw6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#2637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-hsw4/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-glk3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#2635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-glk9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#1635] / [i915#2635]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-tglb2/igt@perf@gen12-unprivileged-single-ctx-counters.html">SKIP</a> ([i915#1354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-tglb6/igt@perf@gen12-unprivileged-single-ctx-counters.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-oa-exponent:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9307/shard-skl9/igt@perf@invalid-oa-exponent.html">SKIP</a> ([fdo#109271] / [i915#1354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18883/shard-skl1/igt@perf@invalid-oa-e">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8948645330222885812==--

--===============2114421489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2114421489==--
