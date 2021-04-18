Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AECA363338
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Apr 2021 05:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8E96E072;
	Sun, 18 Apr 2021 03:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6B1F6E072;
 Sun, 18 Apr 2021 03:00:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1A97A3ECB;
 Sun, 18 Apr 2021 03:00:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sun, 18 Apr 2021 03:00:07 -0000
Message-ID: <161871480782.9415.17897070020286859884@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210418002126.87882-1-jose.souza@intel.com>
In-Reply-To: <20210418002126.87882-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/display=3A_Fill_PSR_state_?=
 =?utf-8?q?during_hardware_configuration_read_out?=
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
Content-Type: multipart/mixed; boundary="===============0136041446=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0136041446==
Content-Type: multipart/alternative;
 boundary="===============5739273417474764869=="

--===============5739273417474764869==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915/display: Fill PSR state during hardware configuration read out
URL   : https://patchwork.freedesktop.org/series/89204/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9979_full -> Patchwork_19945_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19945_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][1] ([fdo#109271]) +53 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][3] ([i915#3354])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][4] -> [FAIL][5] ([i915#2846])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][6] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2389]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2389])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][11] -> [SKIP][12] ([i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][13] ([i915#3002])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-snb2/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][14] ([i915#3296])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@gen9_exec_parse@bb-large.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#636])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl7/igt@i915_suspend@forcewake.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#198])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#2521])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#2574])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_ccs@pipe-c-bad-rotation-90:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90.html

  * igt@kms_chamelium@hdmi-edid-read:
    - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl3/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][30] ([i915#1319])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +25 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-edp1:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#146] / [i915#198])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#2122])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2642])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-snb:          NOTRUN -> [SKIP][39] ([fdo#109271]) +354 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2672])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +47 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#1188])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][45] ([fdo#108145] / [i915#265]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][46] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#658]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#658]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109642] / [fdo#111068] / [i915#658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([i915#1542])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl9/igt@perf@polling-parameterized.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl7/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@fair-7:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2994])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2994])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [TIMEOUT][59] ([i915#2369] / [i915#3063]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl10/igt@gem_eio@unwedge-stress.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl8/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [TIMEOUT][61] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][63] ([i915#2842]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][65] ([i915#2842]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][67] ([i915#2842]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
    - shard-tglb:         [FAIL][69] ([i915#2842]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][71] ([i915#2428]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][73] ([i915#307]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][75] ([i915#1436] / [i915#716]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][77] ([i915#2828] / [i915#300]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a:
    - shard-skl:          [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-skl:          [FAIL][87] ([i915#2821]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl7/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][89] ([i915#2852]) -> [FAIL][90] ([i915#2842])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][91] ([i915#588]) -> [SKIP][92] ([i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][93] ([i915#2920]) -> [SKIP][94] ([i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][95] ([i915#658]) -> [SKIP][96] ([i915#2920]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#602]) -> ([FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#602])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl6/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl7/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl4/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl7/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl2/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl7/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl7/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl7/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@runner@aborted.html
    - shard-skl:          ([FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118]) ([i915#1814] / [i915#2029] / [i915#3002])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl3/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl1/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl2/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl9/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2821]: https://gitlab.freedesktop.org/drm/intel/issues/2821
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#307]: https://gitlab.freedesktop.org/drm/intel/issues/307
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3296]: https://gitlab.freedesktop.org/drm/intel/issues/3296
  [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Participating hosts (12 -> 12)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9979 -> Patchwork_19945

  CI-20190529: 20190529
  CI_DRM_9979: 3fc393180390c562554bdd7d0ac08fa4b86a4011 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19945: 552ce59e5d6a8805bfa342474467e6018c10dacb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/index.html

--===============5739273417474764869==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915/display:=
 Fill PSR state during hardware configuration read out</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89204/">https://patchwork.freedesktop.org/series/89204/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19945/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19945/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9979_full -&gt; Patchwork_19945_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19945_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl1/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-snb2/igt@gem_eio@unwedge-stress.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3354">i=
915#3354</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9979/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard=
-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19945/shard-apl6/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
46">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-snb2/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3002">i915#3002</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3296"=
>i915#3296</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19945/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl7/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl4=
/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl8/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-s=
kl6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19945/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/=
shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111304">fdo#111304</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl3/igt@kms_chamelium@hdmi-edid-read.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm=
-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl8/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/sh=
ard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl10/igt@kms_flip@flip-vs-suspend@a-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/=
shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19945/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-snb7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +354 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +47 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-=
skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-apl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-ic=
lb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/s=
hard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-=
skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-skl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19945/shard-kbl4/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19945/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9979/shard-skl10/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9945/shard-skl8/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9979/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2481">i915#2481=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i91=
5#3070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19945/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19945/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
945/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9979/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
45/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 similar =
issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9979/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
945/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915#24=
28</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19945/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/307">i915#307<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
945/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716"=
>i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19945/shard-skl7/igt@gen9_exec_parse@allowed-single.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2828=
">i915#2828</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19945/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19945/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible=
@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl9/igt@kms_flip_tiling@flip-changes-tiling@edp-1-pipe-=
a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19945/shard-skl9/igt@kms_flip_tiling@flip-changes-til=
ing@edp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19945/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-cons=
tant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/=
shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl9/igt@sysfs_preempt_timeout@timeout@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2821">i915#=
2821</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19945/shard-skl7/igt@sysfs_preempt_timeout@timeout@vecs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#=
2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19945/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
945/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19945/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dm=
g-area-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19945/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-=
area-5.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9979/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
79/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-kbl2/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">=
i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/602">i915#602</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9945/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19945/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19945/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9979/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9979/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9979/shard-skl1/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3002">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19945/shard-skl2/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1994=
5/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl2/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9945/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19945/shard-skl1/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3002">i915#3002</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (12 -&gt; 12)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9979 -&gt; Patchwork_19945</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9979: 3fc393180390c562554bdd7d0ac08fa4b86a4011 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_6067: 14317b92a672d9a20cd04fc3b0c80e2fb12d51d5 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19945: 552ce59e5d6a8805bfa342474467e6018c10dacb @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5739273417474764869==--

--===============0136041446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0136041446==--
