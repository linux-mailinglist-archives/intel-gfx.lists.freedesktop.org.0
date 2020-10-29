Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6480229F6E3
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 22:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32FB6E90D;
	Thu, 29 Oct 2020 21:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D443C6E91E;
 Thu, 29 Oct 2020 21:31:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD5BAA47DF;
 Thu, 29 Oct 2020 21:31:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Gunthorpe" <jgg@nvidia.com>
Date: Thu, 29 Oct 2020 21:31:06 -0000
Message-ID: <160400706683.1422.12355787751925801664@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <0-v1-44733fccd781+13d-rm_scatterlist_max_jgg@nvidia.com>
In-Reply-To: <0-v1-44733fccd781+13d-rm_scatterlist_max_jgg@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Remove_SCATTERLIST=5FMAX=5FSEGMENT?=
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
Content-Type: multipart/mixed; boundary="===============1167363210=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1167363210==
Content-Type: multipart/alternative;
 boundary="===============5590616556754488480=="

--===============5590616556754488480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Remove SCATTERLIST_MAX_SEGMENT
URL   : https://patchwork.freedesktop.org/series/83203/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9220_full -> Patchwork_18807_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18807_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18807_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18807_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk7/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile}:
    - shard-skl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9220_full and Patchwork_18807_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 174 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18807_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#118] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk3/igt@gem_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk4/igt@gem_blits@basic.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][6] -> [SKIP][7] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-kbl2/igt@i915_pm_rpm@fences-dpms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-kbl6/igt@i915_pm_rpm@fences-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#54]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#1982]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb8/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1635] / [i915#1982]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - shard-glk:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#1635] / [i915#79])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][20] -> [DMESG-FAIL][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#79])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#79])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1982]) +8 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#1188])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1036])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145] / [i915#265]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@sysfs_heartbeat_interval@mixed@bcs0:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#1731])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl4/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
#### Possible fixes ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [INCOMPLETE][38] ([i915#82]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [INCOMPLETE][40] ([i915#198]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@suspend:
    - shard-iclb:         [INCOMPLETE][42] ([i915#1185] / [i915#2483]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb3/igt@gem_eio@suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb7/igt@gem_eio@suspend.html

  * igt@gem_madvise@dontneed-before-mmap:
    - shard-iclb:         [DMESG-WARN][44] ([i915#1982]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb5/igt@gem_madvise@dontneed-before-mmap.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb5/igt@gem_madvise@dontneed-before-mmap.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][46] ([i915#1436] / [i915#716]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * {igt@kms_async_flips@alternate-sync-async-flip}:
    - shard-apl:          [DMESG-WARN][48] ([i915#1635] / [i915#1982]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl2/igt@kms_async_flips@alternate-sync-async-flip.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events}:
    - shard-kbl:          [FAIL][50] ([i915#2521]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-tglb:         [FAIL][52] ([i915#2521]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb1/igt@kms_async_flips@async-flip-with-page-flip-events.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb7/igt@kms_async_flips@async-flip-with-page-flip-events.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [INCOMPLETE][54] -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][56] ([i915#54]) -> [PASS][57] +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][58] ([i915#72]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [FAIL][60] ([i915#2346]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
    - shard-skl:          [FAIL][62] ([i915#2346]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - shard-glk:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk1/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
    - shard-snb:          [DMESG-WARN][66] ([i915#42]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_hdr@bpc-switch.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-256:
    - shard-skl:          [DMESG-WARN][70] ([i915#1982]) -> [PASS][71] +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - shard-skl:          [FAIL][74] ([i915#1732]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl4/igt@sysfs_timeslice_duration@timeout@bcs0.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-WARN][76] ([i915#1982]) -> [DMESG-FAIL][77] ([i915#1982])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][78] ([i915#198]) -> [DMESG-WARN][79] ([i915#1982])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][80] ([i915#31]) -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_setmode@basic.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][82] ([i915#1436]) -> [FAIL][83] ([i915#1611] / [i915#1814] / [i915#2029])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2483]: https://gitlab.freedesktop.org/drm/intel/issues/2483
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9220 -> Patchwork_18807

  CI-20190529: 20190529
  CI_DRM_9220: e7f237a791834671ed85395734fb33bbca8ef7b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18807: 66f5f63cc7495d4b9f63df6f5fb5c4363a57f416 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/index.html

--===============5590616556754488480==
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
<tr><td><b>Series:</b></td><td>drm: Remove SCATTERLIST_MAX_SEGMENT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83203/">https://patchwork.freedesktop.org/series/83203/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9220_full -&gt; Patchwork_18807_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18807_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18807_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18807_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk5/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk7/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile}:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9220_full and Patchwork_18807_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 174 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18807_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk3/igt@gem_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk4/igt@gem_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-kbl2/igt@i915_pm_rpm@fences-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-kbl6/igt@i915_pm_rpm@fences-dpms.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb8/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1036">i915#1036</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl4/igt@sysfs_heartbeat_interval@mixed@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-snb6/igt@core_hotunplug@hotrebind-lateclose.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-snb5/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl9/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb3/igt@gem_eio@suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1185">i915#1185</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2483">i915#2483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb7/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-mmap:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb5/igt@gem_madvise@dontneed-before-mmap.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb5/igt@gem_madvise@dontneed-before-mmap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@alternate-sync-async-flip}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-apl6/igt@kms_async_flips@alternate-sync-async-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-apl2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events}:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-kbl2/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb1/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb7/igt@kms_async_flips@async-flip-with-page-flip-events.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk9/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-glk1/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-glk8/igt@kms_cursor_legacy@short-flip-before-cursor-toggle.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-256:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl3/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@kms_plane_cursor@pipe-a-overlay-size-256.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl3/igt@sysfs_timeslice_duration@timeout@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1732">i915#1732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl4/igt@sysfs_timeslice_duration@timeout@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl6/igt@kms_setmode@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9220/shard-skl9/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18807/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9220 -&gt; Patchwork_18807</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9220: e7f237a791834671ed85395734fb33bbca8ef7b1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18807: 66f5f63cc7495d4b9f63df6f5fb5c4363a57f416 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5590616556754488480==--

--===============1167363210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1167363210==--
