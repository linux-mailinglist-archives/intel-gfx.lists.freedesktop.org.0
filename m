Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAC82C2C08
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 16:55:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 413FF6E418;
	Tue, 24 Nov 2020 15:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B0DE6E223;
 Tue, 24 Nov 2020 15:55:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50C13A8836;
 Tue, 24 Nov 2020 15:55:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Tue, 24 Nov 2020 15:55:43 -0000
Message-ID: <160623334332.10864.5055661632280029166@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124113824.19994-1-tzimmermann@suse.de>
In-Reply-To: <20201124113824.19994-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Move_struct_drm=5Fdevice=2Epdev_to_legacy?=
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
Content-Type: multipart/mixed; boundary="===============2117524470=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2117524470==
Content-Type: multipart/alternative;
 boundary="===============6868755980331190735=="

--===============6868755980331190735==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Move struct drm_device.pdev to legacy
URL   : https://patchwork.freedesktop.org/series/84205/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9382_full -> Patchwork_18963_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18963_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18963_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18963_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-internal-immediate:
    - shard-glk:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk5/igt@gem_eio@in-flight-internal-immediate.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-glk:          [PASS][2] -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_userptr_blits@huge-split}:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl2/igt@gem_userptr_blits@huge-split.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl6/igt@gem_userptr_blits@huge-split.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9382_full and Patchwork_18963_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 199 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18963_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#118] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#198])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl6/igt@i915_suspend@sysfs-reader.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-iclb:         [PASS][10] -> [DMESG-WARN][11] ([i915#1226])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb1/igt@kms_big_fb@linear-16bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +6 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-hsw4/igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-hsw6/igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2122])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-kbl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#1188])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1635] / [i915#1982]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109642] / [fdo#111068])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb2/igt@kms_psr@psr2_basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb5/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - shard-tglb:         [PASS][30] -> [DMESG-WARN][31] ([i915#1982])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb2/igt@kms_vblank@pipe-c-wait-busy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb1/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2060])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl3/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl1/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][36] ([i915#454]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][38] ([CI#80]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl2/igt@i915_selftest@live@execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl7/igt@i915_selftest@live@execlists.html

  * {igt@kms_async_flips@test-time-stamp}:
    - shard-tglb:         [FAIL][40] ([i915#2597]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb3/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-kbl4/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [FAIL][44] ([i915#54]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-glk:          [DMESG-WARN][46] ([i915#1982]) -> [PASS][47] +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [FAIL][48] ([i915#2346]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp1:
    - shard-apl:          [DMESG-WARN][50] ([i915#1635] / [i915#1982]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-apl8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-apl8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [DMESG-WARN][52] ([i915#1982]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][54] ([i915#1188]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:
    - shard-hsw:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-hsw6/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-hsw2/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [DMESG-FAIL][58] ([fdo#108145] / [i915#1982]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][60] ([fdo#109441]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
    - shard-skl:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html

  * igt@prime_vgem@coherency-blt:
    - shard-tglb:         [INCOMPLETE][64] -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb1/igt@prime_vgem@coherency-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb6/igt@prime_vgem@coherency-blt.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][66] ([i915#2684]) -> [WARN][67] ([i915#1804] / [i915#2684])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglb:         [INCOMPLETE][68] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411] / [i915#456]) -> [DMESG-WARN][69] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb7/igt@i915_suspend@sysfs-reader.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [DMESG-FAIL][70] ([i915#1982]) -> [DMESG-WARN][71] ([i915#1982])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          [FAIL][72] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][73] ([fdo#108145] / [i915#1982])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][74] ([i915#2295]) -> [FAIL][75] ([i915#2295] / [i915#483])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-kbl7/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl4/igt@runner@aborted.html
    - shard-glk:          ([FAIL][76], [FAIL][77]) ([i915#1814] / [i915#2295] / [i915#483] / [k.org#202321]) -> [FAIL][78] ([i915#2295] / [k.org#202321])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk7/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk8/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82]) ([i915#1602] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#409]) -> ([FAIL][83], [FAIL][84], [FAIL][85]) ([i915#1602] / [i915#1814] / [i915#2295])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb5/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb7/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb3/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9382 -> Patchwork_18963

  CI-20190529: 20190529
  CI_DRM_9382: ac60f3f3090115d21f028bffa2dcfb67f695c4f2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5869: 5236e5d4be3ab5e2fedacc32152120b7fb77bf9f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18963: 3fe494566d7d9e608a50e509ab2ea30f86e1c212 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/index.html

--===============6868755980331190735==
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
<tr><td><b>Series:</b></td><td>drm: Move struct drm_device.pdev to legacy</=
td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84205/">https://patchwork.freedesktop.org/series/84205/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18963/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18963/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9382_full -&gt; Patchwork_18963_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18963_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18963_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18963_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18963/shard-glk5/igt@gem_eio@in-flight-internal-imm=
ediate.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-=
plflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18963/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scn=
dscrn-indfb-plflip-blt.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_userptr_blits@huge-split}:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl2/igt@gem_userptr_blits@huge-split.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shar=
d-skl6/igt@gem_userptr_blits@huge-split.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9382_full and Patchwork_18=
963_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 199 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18963_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963=
/shard-glk6/igt@gem_exec_whisper@basic-normal-all.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-s=
kl2/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb1/igt@kms_big_fb@linear-16bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963=
/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-0.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18963/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-onscreen.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl1/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18963/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-e=
dge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982">i915#1982</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-hsw4/igt@kms_flip@2x-flip-vs-panning-interruptible@ab-vg=
a1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18963/shard-hsw6/igt@kms_flip@2x-flip-vs-panning-interru=
ptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-kbl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18963/shard-kbl2/igt@kms_flip@plain-flip-fb-recreate-interrupt=
ible@b-dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-kbl2/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18963/shard-kbl3/igt@kms_flip@plain-flip-ts-check-interruptible@a=
-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-skl=
5/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18963/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-ic=
lb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-iclb5/i=
gt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb2/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shar=
d-tglb1/igt@kms_vblank@pipe-c-wait-busy.html">DMESG-WARN</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl3/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1896=
3/shard-skl1/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2060</a>)</l=
i>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18963/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-icl=
b8/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl2/igt@i915_selftest@live@execlists.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">=
CI#80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18963/shard-skl7/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@test-time-stamp}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18963/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-kbl4/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18963/shard-kbl6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#5=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18963/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-glk2/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_18963/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-64x64-ri=
ght-edge.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18963/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-apl8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18963/shard-apl8/igt@kms_flip@flip-vs-blocking-wf-vbla=
nk@a-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb=
-pgflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18963/shard-tglb1/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-shrfb-pgflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/=
shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequence:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-hsw6/igt@kms_pipe_crc_basic@read-crc-pipe-b-frame-sequen=
ce.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18963/shard-hsw2/igt@kms_pipe_crc_basic@read-crc-pip=
e-b-frame-sequence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_plane_alpha_blend@pipe-b=
-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18963/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms=
-rpm.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb1/igt@prime_vgem@coherency-blt.html">INCOMPLETE</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/s=
hard-tglb6/igt@prime_vgem@coherency-blt.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18963/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb7/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#143=
6</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1602">i9=
15#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
87">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/456">i915#456</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18963/shard-tglb6/igt@i915_suspend@sysfs-reader.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1887">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2411">i915#2411</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@a-ed=
p1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18963/shard-skl9/igt@kms_flip@plain-flip-ts-check-in=
terruptible@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18963/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-basic=
.html">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9382/shard-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-kbl4/ig=
t@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-glk8/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/=
show_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-glk1/igt@runner@aborted.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/22=
95">i915#2295</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=
=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9382/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9382/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9382/shard-tglb7/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/409">i915#409</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18963/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18963/shard-tglb6/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9382 -&gt; Patchwork_18963</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9382: ac60f3f3090115d21f028bffa2dcfb67f695c4f2 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5869: 5236e5d4be3ab5e2fedacc32152120b7fb77bf9f @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18963: 3fe494566d7d9e608a50e509ab2ea30f86e1c212 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6868755980331190735==--

--===============2117524470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2117524470==--
