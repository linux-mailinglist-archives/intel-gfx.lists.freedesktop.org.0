Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B525517CFF7
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 21:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD2E6E25D;
	Sat,  7 Mar 2020 20:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07E5F6E0C6;
 Sat,  7 Mar 2020 20:17:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F34B3A47DA;
 Sat,  7 Mar 2020 20:17:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Sat, 07 Mar 2020 20:17:01 -0000
Message-ID: <158361222196.20976.11711886467750585434@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200306185833.53984-1-jose.souza@intel.com>
In-Reply-To: <20200306185833.53984-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/display=3A_Deactive_F?=
 =?utf-8?q?BC_in_fastsets_when_disabled_by_parameter?=
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

Series: series starting with [v2,1/2] drm/i915/display: Deactive FBC in fastsets when disabled by parameter
URL   : https://patchwork.freedesktop.org/series/74401/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8088_full -> Patchwork_16868_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16868_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16868_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16868_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-tglb5/igt@runner@aborted.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [INCOMPLETE][4] ([i915#58] / [k.org#198133]) -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16868_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#112080]) +16 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb7/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [i915#677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][14] -> [DMESG-WARN][15] ([i915#118] / [i915#95])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk9/igt@gem_exec_whisper@basic-fds-priority.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-glk3/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#413])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb1/igt@i915_pm_rps@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#69]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl2/igt@i915_suspend@sysfs-reader.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#72])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk9/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-glk6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#62] / [i915#92]) +9 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][26] -> [INCOMPLETE][27] ([fdo#103665])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-apl:          [PASS][28] -> [FAIL][29] ([i915#899])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl8/igt@kms_plane_lowres@pipe-c-tiling-x.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-apl1/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([IGT#6])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl10/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109276]) +12 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [TIMEOUT][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][38] ([fdo#103927]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl6/igt@gem_ctx_persistence@close-replace-race.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][42] ([fdo#109276] / [i915#677]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][44] ([fdo#112146]) -> [PASS][45] +5 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][46] ([i915#677]) -> [PASS][47] +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [SKIP][48] ([fdo#109276]) -> [PASS][49] +25 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][50] ([i915#644]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][52] ([i915#447]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [FAIL][54] ([i915#54]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][58] ([i915#72]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][60] ([IGT#5]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][62] ([i915#46]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][64] ([i915#79]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][66] ([i915#34]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][72] ([i915#250]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][74] ([fdo#108145]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][76] ([i915#899]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][80] ([i915#31]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-skl5/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-skl10/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][82] ([fdo#112080]) -> [PASS][83] +10 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][84] ([i915#468]) -> [FAIL][85] ([i915#454])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8088/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8088 -> Patchwork_16868

  CI-20190529: 20190529
  CI_DRM_8088: 91dc8b179da374160a6bbdbd6987a512a10fbc02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5498: 1bb7a25a09fe3e653d310e8bdfbdde4a1934b326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16868: deed84b37356bf57b15b4c730465f4369bf0d55d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16868/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
