Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7445B3D1C5F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 05:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC4E6EEB1;
	Thu, 22 Jul 2021 03:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B50656EEB1;
 Thu, 22 Jul 2021 03:22:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD2EFAA01E;
 Thu, 22 Jul 2021 03:22:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 22 Jul 2021 03:22:46 -0000
Message-ID: <162692416670.30342.8661865093573401541@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210721201343.2962674-1-jason@jlekstrand.net>
In-Reply-To: <20210721201343.2962674-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Migrate_memory_to_SMEM_when_imported_cross-device_=28r?=
 =?utf-8?q?ev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1613681133=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1613681133==
Content-Type: multipart/alternative;
 boundary="===============0795868254941586460=="

--===============0795868254941586460==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Migrate memory to SMEM when imported cross-device (rev3)
URL   : https://patchwork.freedesktop.org/series/92617/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10367_full -> Patchwork_20668_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20668_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - {shard-rkl}:        [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][3] ([i915#1397]) -> [SKIP][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * {igt@kms_dp_dsc@xrgb8888-dsc-compression}:
    - {shard-rkl}:        NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-2/igt@kms_dp_dsc@xrgb8888-dsc-compression.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:
    - {shard-rkl}:        [SKIP][6] ([i915#1845]) -> [SKIP][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html

  
Known issues
------------

  Here are the changes found in Patchwork_20668_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@flink:
    - shard-kbl:          [PASS][8] -> [INCOMPLETE][9] ([i915#2369])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl6/igt@drm_import_export@flink.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl3/igt@drm_import_export@flink.html

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271]) +69 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@feature_discovery@display-3x.html

  * igt@feature_discovery@display-4x:
    - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#1839])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb1/igt@feature_discovery@display-4x.html

  * igt@gem_ctx_persistence@engines-hostile:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@gem_ctx_persistence@engines-hostile.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][13] -> [SKIP][14] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][21] -> [SKIP][22] ([fdo#109271]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2842])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#118] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][27] ([i915#2658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#768])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][29] ([i915#2724])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#1937])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#579])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#579])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_selftest@mock@uncore:
    - shard-glk:          NOTRUN -> [DMESG-WARN][33] ([i915#3746]) +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@i915_selftest@mock@uncore.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#146] / [i915#198])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl3/igt@i915_suspend@sysfs-reader.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278]) +4 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109284] / [fdo#111827])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][43] ([i915#1319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271]) +368 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][46] -> [INCOMPLETE][47] ([i915#180] / [i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#79])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][52] ([i915#180]) +4 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#2122]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#2546])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#111825]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-skl:          [PASS][60] -> [DMESG-WARN][61] ([i915#1982]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1188])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2733])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][73] ([i915#31])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +198 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([i915#1542])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@perf@blocking.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl10/igt@perf@blocking.html

  * igt@perf_pmu@rc6-runtime-pm:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111719])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb2/igt@perf_pmu@rc6-runtime-pm.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2994])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@fbdev@write:
    - {shard-rkl}:        [SKIP][81] ([i915#2582]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@fbdev@write.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@fbdev@write.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][83] ([i915#658]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@feature_discovery@psr1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][85] ([i915#2410]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][87] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][91] ([i915#2842]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-scanout@vecs0:
    - {shard-rkl}:        [SKIP][97] ([i915#3639]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@vecs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][99] ([i915#2190]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][101] ([i915#1436] / [i915#716]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][103] ([i915#3012]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_backlight@fade_with_suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - {shard-rkl}:        [SKIP][105] ([fdo#111614]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - {shard-rkl}:        [SKIP][107] ([i915#3721]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][109] ([i915#3678]) -> [PASS][110] +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - {shard-rkl}:        [SKIP][111] ([i915#1149] / [i915#1849]) -> [PASS][112] +4 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-random:
    - {shard-rkl}:        [SKIP][113] ([fdo#112022]) -> [PASS][114] +12 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - {shard-rkl}:        [SKIP][115] ([fdo#111825]) -> [PASS][116] +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-skl:          [FAIL][117] ([i915#2346]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][119] ([i915#1257]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_dp_aux_dev.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
    - {shard-rkl}:        [SKIP][121] ([fdo#111314]) -> [PASS][122] +5 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:
    - shard-skl:          [FAIL][123] ([i915#3451]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][125] ([i915#79]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][129] ([i915#2122]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - {shard-rkl}:        [SKIP][131] ([i915#1849]) -> [PASS][132] +39 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][133] ([i915#1188]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_hdr@bpc-switch.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_lease@lease_get:
    - {shard-rkl}:        [SKIP][135] ([i915#1845]) -> [PASS][136] +17 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_lease@lease_get.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_lease@lease_get.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][137] ([fdo#108145] / [i915#265]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - {shard-rkl}:        [SKIP][139] ([i915#1849] / [i915#3558]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][141] ([fdo#109441]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][143] ([i915#1072]) -> [PASS][144] +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_psr@sprite_blt.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [FAIL][145] ([i915#1542]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk9/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][147] ([i915#1722]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl1/igt@perf@polling-small-buf.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl2/igt@perf@polling-small-bu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/index.html

--===============0795868254941586460==
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
<tr><td><b>Series:</b></td><td>drm/i915: Migrate memory to SMEM when imported cross-device (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92617/">https://patchwork.freedesktop.org/series/92617/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10367_full -&gt; Patchwork_20668_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20668_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_dp_dsc@xrgb8888-dsc-compression}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-2/igt@kms_dp_dsc@xrgb8888-dsc-compression.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20668_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl6/igt@drm_import_export@flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl3/igt@drm_import_export@flink.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@feature_discovery@display-3x.html">SKIP</a> ([fdo#109271]) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb1/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hostile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@gem_ctx_persistence@engines-hostile.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk1/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk2/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#579])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@uncore:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a> ([i915#3746]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl3/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl8/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +368 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl7/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([fdo#109271]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#111825]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([fdo#109271]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">DMESG-WARN</a> ([i915#1982]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb6/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-snb2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +198 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@perf@blocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl10/igt@perf@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-runtime-pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb2/igt@perf_pmu@rc6-runtime-pm.html">SKIP</a> ([fdo#111719])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl3/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk1/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@feature_discovery@psr1.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@vecs0.html">SKIP</a> ([i915#3639]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk3/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@i915_pm_backlight@fade_with_suspend.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x21-random:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-random.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +3 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">FAIL</a> ([i915#3451]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-render-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">PASS</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl5/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease_get:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_lease@lease_get.html">SKIP</a> ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_lease@lease_get.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-rkl-5/igt@kms_psr@sprite_blt.html">SKIP</a> ([i915#1072]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-glk9/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-glk9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10367/shard-skl1/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20668/shard-skl2/igt@perf@polling-small-bu">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============0795868254941586460==--

--===============1613681133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1613681133==--
