Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B62F9C30
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393096E197;
	Mon, 18 Jan 2021 10:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC42A6E197;
 Mon, 18 Jan 2021 10:09:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5343A882F;
 Mon, 18 Jan 2021 10:09:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Mon, 18 Jan 2021 10:09:01 -0000
Message-ID: <161096454166.28163.16570551513922875898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210118060730.15425-1-sean.z.huang@intel.com>
In-Reply-To: <20210118060730.15425-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session_=28rev21=29?=
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
Content-Type: multipart/mixed; boundary="===============1880001182=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1880001182==
Content-Type: multipart/alternative;
 boundary="===============1733170058362337297=="

--===============1733170058362337297==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session (rev21)
URL   : https://patchwork.freedesktop.org/series/84620/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9629_full -> Patchwork_19387_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19387_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19387_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19387_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb7/igt@gem_exec_suspend@basic-s4-devices.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@mock@dmabuf:
    - shard-iclb:         [PASS][3] -> [SKIP][4] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@i915_selftest@mock@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@i915_selftest@mock@dmabuf.html

  * igt@i915_selftest@mock@objects:
    - shard-tglb:         [PASS][5] -> [SKIP][6] +10 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_selftest@mock@objects.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@i915_selftest@mock@objects.html

  * igt@i915_selftest@mock@timelines:
    - shard-kbl:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl4/igt@i915_selftest@mock@timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@i915_selftest@mock@timelines.html
    - shard-iclb:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@i915_selftest@mock@timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@i915_selftest@mock@timelines.html
    - shard-apl:          [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl6/igt@i915_selftest@mock@timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl7/igt@i915_selftest@mock@timelines.html
    - shard-glk:          [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@i915_selftest@mock@timelines.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@i915_selftest@mock@timelines.html
    - shard-skl:          [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@i915_selftest@mock@timelines.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@i915_selftest@mock@timelines.html
    - shard-tglb:         [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_selftest@mock@timelines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@i915_selftest@mock@timelines.html
    - shard-snb:          [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb7/igt@i915_selftest@mock@timelines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@i915_selftest@mock@timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_19387_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#112283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk8/igt@gem_exec_whisper@basic-normal.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk4/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110426] / [i915#1704])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_userptr_blits@readonly-unsync.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][27] -> [INCOMPLETE][28] ([i915#2880])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110892])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-tglb:         [PASS][32] -> [DMESG-WARN][33] ([i915#2411])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_pm_rpm@system-suspend-devices.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb5/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_selftest@mock@dmabuf:
    - shard-apl:          [PASS][34] -> [SKIP][35] ([fdo#109271]) +10 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl6/igt@i915_selftest@mock@dmabuf.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl7/igt@i915_selftest@mock@dmabuf.html

  * igt@i915_selftest@mock@hugepages:
    - shard-glk:          [PASS][36] -> [SKIP][37] ([fdo#109271]) +10 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@i915_selftest@mock@hugepages.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@i915_selftest@mock@hugepages.html

  * igt@i915_selftest@mock@objects:
    - shard-skl:          [PASS][38] -> [SKIP][39] ([fdo#109271]) +10 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@i915_selftest@mock@objects.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@i915_selftest@mock@objects.html

  * igt@i915_selftest@mock@requests:
    - shard-kbl:          [PASS][40] -> [SKIP][41] ([fdo#109271]) +10 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl4/igt@i915_selftest@mock@requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@i915_selftest@mock@requests.html

  * igt@i915_selftest@mock@vma:
    - shard-snb:          [PASS][42] -> [SKIP][43] ([fdo#109271]) +10 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb7/igt@i915_selftest@mock@vma.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@i915_selftest@mock@vma.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#2597])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb1/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111304])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][47] ([i915#1149] / [i915#315])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_color@pipe-d-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [i915#1149])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color@pipe-d-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109300] / [fdo#111066])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#54]) +7 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#54])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109274] / [fdo#109278])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#2346])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2346] / [i915#533])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2122])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2672])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +41 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109280]) +6 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1188])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl7/igt@kms_hdr@bpc-switch.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#1187])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#265])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][73] -> [SKIP][74] ([fdo#109642] / [fdo#111068])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@nouveau_crc@pipe-c-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#2530]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@nouveau_crc@pipe-c-source-rg.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [PASS][76] -> [DMESG-WARN][77] ([i915#1982] / [i915#262])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@perf_pmu@module-unload.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl9/igt@perf_pmu@module-unload.html

  * igt@prime_nv_pcopy@test3_1:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@prime_nv_pcopy@test3_1.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][79] ([i915#2426])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@runner@aborted.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1731])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-iclb:         [FAIL][82] ([i915#2896]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@gem_ctx_persistence@smoketest.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][84] ([i915#198] / [i915#2624]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl6/igt@gem_exec_capture@pi@vecs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl10/igt@gem_exec_capture@pi@vecs0.html

  * {igt@gem_exec_fair@basic-flow@rcs0}:
    - shard-tglb:         [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-none-share@rcs0}:
    - shard-iclb:         [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-apl:          [SKIP][90] ([fdo#109271]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * {igt@gem_exec_fair@basic-none-solo@rcs0}:
    - shard-apl:          [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * {igt@gem_exec_fair@basic-none-vip@rcs0}:
    - shard-kbl:          [FAIL][94] ([i915#2842]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@rcs0}:
    - shard-apl:          [DMESG-WARN][96] ([i915#1610]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl2/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * {igt@gem_exec_schedule@u-fairslice@vcs0}:
    - shard-skl:          [DMESG-WARN][98] ([i915#1610] / [i915#2803]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [INCOMPLETE][100] ([i915#1895]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][102] ([i915#1436] / [i915#1982] / [i915#716]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][104] ([i915#2521]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][106] ([i915#165]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][108] ([i915#54]) -> [PASS][109] +5 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-glk:          [DMESG-WARN][110] ([i915#118] / [i915#95]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][112] ([i915#2346]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:
    - shard-skl:          [FAIL][114] ([i915#2122]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [INCOMPLETE][116] ([i915#146] / [i915#198]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][118] ([fdo#108145] / [i915#265]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-kbl:          [DMESG-WARN][120] ([i915#180] / [i915#78]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][122] ([fdo#109441]) -> [PASS][123] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [INCOMPLETE][124] ([i915#1731] / [i915#198]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][126] ([i915#1804] / [i915#2684]) -> [WARN][127] ([i915#2681] / [i915#2684])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][128] ([i915#2681] / [i915#2684]) -> [WARN][129] ([i915#1804] / [i915#2684])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][130] ([i915#2295]) -> ([FAIL][131], [FAIL][132]) ([i915#1436] / [i915#2295] / [i915#2426])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@runner@aborted.html
    - shard-iclb:         [FAIL][133] ([i915#2295] / [i915#2724]) -> ([FAIL][134], [FAIL][135]) ([i915#2295] / [i915#2426] / [i915#2724])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb3/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@runner@aborted.html
    - shard-glk:          [FAIL][136] ([i915#2295] / [k.org#202321]) -> ([FAIL][137], [FAIL][138]) ([i915#2295] / [i915#2426] / [k.org#202321])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@runner@aborted.html
    - shard-tglb:         [FAIL][139] ([i915#2295] / [i915#2667]) -> ([FAIL][140], [FAIL][141]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2667])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110426]: https://bugs.freedesktop.org/show_bug.cgi?id=110426
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1704]: https://gitlab.freedesktop.org/drm/intel/issues/1704
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2624]: https://gitlab.freedesktop.org/drm/intel/issues/2624
  [i915#265]: htt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/index.html

--===============1733170058362337297==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session (rev21)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9629_full -&gt; Patchwork_19387_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19387_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19387_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19387_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb7/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@gem_exec_suspend@basic-s4-devices.html">DMESG-WARN</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@dmabuf:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@i915_selftest@mock@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@i915_selftest@mock@dmabuf.html">SKIP</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@objects:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_selftest@mock@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@i915_selftest@mock@objects.html">SKIP</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@timelines:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl4/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl6/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl7/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
<li>
<p>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb7/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@i915_selftest@mock@timelines.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19387_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_exec_params@secure-non-root.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk8/igt@gem_exec_whisper@basic-normal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk4/igt@gem_exec_whisper@basic-normal.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110426">fdo#110426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1704">i915#1704</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> ([i915#2880])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110892">fdo#110892</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb5/igt@i915_pm_rpm@system-suspend-devices.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@dmabuf:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl6/igt@i915_selftest@mock@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl7/igt@i915_selftest@mock@dmabuf.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@hugepages:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@i915_selftest@mock@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@i915_selftest@mock@hugepages.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@objects:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@i915_selftest@mock@objects.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@i915_selftest@mock@objects.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl4/igt@i915_selftest@mock@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@i915_selftest@mock@requests.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@vma:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-snb7/igt@i915_selftest@mock@vma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@i915_selftest@mock@vma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#2597</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color@pipe-b-ctm-0-75.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> / [i915#315])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color@pipe-d-ctm-green-to-red.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109300">fdo#109300</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111066">fdo#111066</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html">FAIL</a> ([i915#54]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-sliding.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280">fdo#109280</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl7/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1187">i915#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="htt">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="htt">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@nouveau_crc@pipe-c-source-rg.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2530">i915#2530</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl9/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@prime_nv_pcopy@test3_1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-snb5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl6/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2624">i915#2624</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl10/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-flow@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-share@rcs0}:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-solo@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-none-vip@rcs0}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@rcs0}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-apl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_schedule@u-fairslice@vcs0}:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1895">i915#1895</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb6/igt@gem_exec_whisper@basic-queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl2/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl7/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl5/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="htt">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#78]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb5/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-iclb4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2724]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-iclb7/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / [i915#2724])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-glk5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [k.org#202321]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-glk9/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / [k.org#202321])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9629/shard-tglb1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / [i915#2667]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19387/shard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1764">i915#1764</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / [i915#2667])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============1733170058362337297==--

--===============1880001182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1880001182==--
