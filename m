Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685B21E3F67
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 12:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB79689D2F;
	Wed, 27 May 2020 10:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 14ED489D2F;
 Wed, 27 May 2020 10:52:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E2F3A432F;
 Wed, 27 May 2020 10:52:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 27 May 2020 10:52:22 -0000
Message-ID: <159057674202.343.11029703256677256361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Special_handling_for_bonded_requests?=
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

Series: drm/i915: Special handling for bonded requests
URL   : https://patchwork.freedesktop.org/series/77688/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8541_full -> Patchwork_17782_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17782_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17782_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17782_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-snb6/igt@gem_eio@in-flight-contexts-10ms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [TIMEOUT][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][4] ([i915#226]) -> ([FAIL][5], [FAIL][6])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-hsw8/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw6/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw4/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_fence@concurrent@vcs0}:
    - shard-iclb:         [PASS][7] -> [FAIL][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb1/igt@gem_exec_fence@concurrent@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb8/igt@gem_exec_fence@concurrent@vcs0.html

  * {igt@gem_exec_fence@submit3@vcs0}:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-tglb1/igt@gem_exec_fence@submit3@vcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-tglb3/igt@gem_exec_fence@submit3@vcs0.html

  * {igt@gem_exec_fence@submit67@vcs0}:
    - shard-iclb:         [PASS][11] -> [INCOMPLETE][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb1/igt@gem_exec_fence@submit67@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb4/igt@gem_exec_fence@submit67@vcs0.html

  * {igt@gem_exec_schedule@submit-golden-slice@vcs0}:
    - shard-tglb:         [PASS][13] -> [FAIL][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-tglb5/igt@gem_exec_schedule@submit-golden-slice@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-tglb5/igt@gem_exec_schedule@submit-golden-slice@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17782_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#78])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][19] -> [DMESG-WARN][20] ([i915#1927])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-snb:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-snb1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_lease@lease-uevent:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#165])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl1/igt@kms_lease@lease-uevent.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl2/igt@kms_lease@lease-uevent.html

  * igt@kms_plane@plane-panning-bottom-right-pipe-b-planes:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1036])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl3/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl3/igt@kms_plane@plane-panning-bottom-right-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180] / [i915#93] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_exec_parallel@fds@bcs0}:
    - shard-iclb:         [INCOMPLETE][35] ([i915#1895]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb2/igt@gem_exec_parallel@fds@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb1/igt@gem_exec_parallel@fds@bcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-iclb:         [INCOMPLETE][37] ([i915#1185]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb3/igt@gem_workarounds@suspend-resume.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb1/igt@gem_workarounds@suspend-resume.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [FAIL][39] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][41] ([i915#54]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-hsw:          [DMESG-WARN][43] ([i915#128]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-hsw8/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw6/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [FAIL][45] ([i915#1181]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][47] ([i915#79]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2}:
    - shard-glk:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][53] ([i915#198]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][55] ([i915#1928]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][67] ([i915#1542]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-hsw6/igt@perf@blocking-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][69] ([i915#1319]) -> [TIMEOUT][70] ([i915#1319] / [i915#1635])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl4/igt@kms_content_protection@atomic-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][71] ([i915#1319] / [i915#1635]) -> [FAIL][72] ([fdo#110321] / [fdo#110336])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl7/igt@kms_content_protection@legacy.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][73] ([i915#1319] / [i915#1635]) -> [FAIL][74] ([fdo#110321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl3/igt@kms_content_protection@lic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl7/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][75] ([fdo#110321]) -> [TIMEOUT][76] ([i915#1319] / [i915#1635])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-apl8/igt@kms_content_protection@srm.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][77] ([i915#1926]) -> [DMESG-FAIL][78] ([i915#1925])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_plane@plane-position-covered-pipe-d-planes:
    - shard-hsw:          [SKIP][79] ([fdo#109271]) -> [SKIP][80] ([fdo#109271] / [i915#1927])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-hsw1/igt@kms_plane@plane-position-covered-pipe-d-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-hsw6/igt@kms_plane@plane-position-covered-pipe-d-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][81] ([fdo#109642] / [fdo#111068]) -> [FAIL][82] ([i915#608])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8541/shard-iclb3/igt@kms_psr2_su@page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1181]: https://gitlab.freedesktop.org/drm/intel/issues/1181
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#226]: https://gitlab.freedesktop.org/drm/intel/issues/226
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-icl-1065g7 


Build changes
-------------

  * Linux: CI_DRM_8541 -> Patchwork_17782

  CI-20190529: 20190529
  CI_DRM_8541: 6f35fec9320a0ee5178075dd3d9df6507f55af68 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5680: f7e3772175c53f0c910f4513831791cb5bdcab04 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17782: 10e39c0f7a03edbe826ad25606a4d465b1817d6b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17782/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
