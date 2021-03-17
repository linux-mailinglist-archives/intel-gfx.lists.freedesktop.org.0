Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB7033E8E2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 06:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781AE6E4D0;
	Wed, 17 Mar 2021 05:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8C2C6E104;
 Wed, 17 Mar 2021 05:19:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1812A47E8;
 Wed, 17 Mar 2021 05:19:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 17 Mar 2021 05:19:35 -0000
Message-ID: <161595837575.17371.5608247483523899034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210317140824.0a28ffec@canb.auug.org.au>
In-Reply-To: <20210317140824.0a28ffec@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_manual_merge_of_the_drm-intel_tree_with_the_drm_tree?=
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
Content-Type: multipart/mixed; boundary="===============1575875907=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1575875907==
Content-Type: multipart/alternative;
 boundary="===============1231147157391430915=="

--===============1231147157391430915==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: linux-next: manual merge of the drm-intel tree with the drm tree
URL   : https://patchwork.freedesktop.org/series/88033/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9862_full -> Patchwork_19799_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19799_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb6/igt@gem_ctx_persistence@process.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][2] -> [TIMEOUT][3] ([i915#2369] / [i915#3063])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][4] -> [INCOMPLETE][5] ([i915#1895])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@gem_exec_balancer@hang.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2846])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2849])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_gttfill@all:
    - shard-glk:          [PASS][16] -> [DMESG-WARN][17] ([i915#118] / [i915#95]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk2/igt@gem_exec_gttfill@all.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk7/igt@gem_exec_gttfill@all.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-skl:          NOTRUN -> [TIMEOUT][18] ([i915#3183])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl7/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#2389]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1610] / [i915#2803])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-tglb:         [PASS][22] -> [DMESG-WARN][23] ([i915#2803])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#307])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk5/igt@gem_mmap_gtt@big-copy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk1/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          NOTRUN -> [FAIL][26] ([i915#307])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl10/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][27] ([i915#2658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          NOTRUN -> [DMESG-WARN][28] ([i915#180])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [PASS][29] -> [TIMEOUT][30] ([i915#2795])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb7/igt@gem_vm_create@destroy-race.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb5/igt@gem_vm_create@destroy-race.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#1436] / [i915#716])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][33] ([i915#1436] / [i915#716])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][34] ([i915#2782])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-snb:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb5/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl6/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl8/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#54]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@pipe-d-forked-move:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_cursor_legacy@pipe-d-forked-move.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#155] / [i915#180] / [i915#636])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2672])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +85 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#1188])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#2472])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl5/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl9/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([fdo#108145] / [i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-coverage-7efc:
    - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl2/igt@kms_plane_alpha_blend@pipe-d-coverage-7efc.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109642] / [fdo#111068] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +117 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl7/igt@kms_vblank@pipe-d-query-forked-busy.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#1542])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk3/igt@perf@polling-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk9/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          [PASS][69] -> [FAIL][70] ([i915#3028])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl7/igt@sysfs_clients@recycle-many.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@sysfs_clients@recycle-many.html
    - shard-kbl:          [PASS][71] -> [FAIL][72] ([i915#3028])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@sysfs_clients@recycle-many.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl1/igt@sysfs_clients@recycle-many.html
    - shard-snb:          NOTRUN -> [FAIL][73] ([i915#3028])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-snb5/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3026]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl6/igt@sysfs_clients@sema-10@rcs0.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-apl:          [PASS][75] -> [SKIP][76] ([fdo#109271] / [i915#3026]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl6/igt@sysfs_clients@sema-10@vcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl8/igt@sysfs_clients@sema-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][77] ([i915#2369] / [i915#2481] / [i915#3070]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb1/igt@gem_eio@unwedge-stress.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][79] ([i915#2846]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][85] ([fdo#109271]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          [DMESG-WARN][89] ([i915#1610] / [i915#2803]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][91] ([i915#118] / [i915#95]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk7/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [FAIL][93] ([i915#2428]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][95] ([i915#454]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][97] ([i915#2597]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][101] ([i915#54]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          [FAIL][107] ([i915#3028]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl6/igt@sysfs_clients@recycle.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-glk:          [SKIP][109] ([fdo#109271] / [i915#3026]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-glk7/igt@sysfs_clients@sema-10@vcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk5/igt@sysfs_clients@sema-10@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][111] ([i915#2684]) -> [WARN][112] ([i915#1804] / [i915#2684])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         [FAIL][113] ([i915#3137]) -> [SKIP][114] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb1/igt@kms_content_protection@atomic.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         [SKIP][115] ([i915#3116]) -> [FAIL][116] ([i915#3137])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb4/igt@kms_content_protection@dp-mst-type-1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-iclb:         [SKIP][117] ([fdo#109300] / [fdo#111066]) -> [FAIL][118] ([i915#3144])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb8/igt@kms_content_protection@uevent.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb1/igt@kms_content_protection@uevent.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][119] ([i915#2920]) -> [SKIP][120] ([i915#658]) +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][121] ([i915#658]) -> [SKIP][122] ([i915#2920])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([i915#1814] / [i915#2724] / [i915#3002]) -> ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#2724] / [i915#3002] / [i915#716] / [i915#92])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][134], [FAIL][135], [FAIL][136]) ([i915#2667] / [i915#3002]) -> ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([i915#2426] / [i915#2667] / [i915#2803] / [i915#3002])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146]) ([i915#2029] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2426] / [i915#2724] / [i915#3002])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl8/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl2/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl6/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl9/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl9/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2472]: https://gitlab.freedesktop.org/drm/intel/issues/2472
  [i915#2481]: https://gitlab.freedesktop.org/drm/intel/issues/2481
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2795]: https://gitlab.freedesktop.org/drm/intel/issues/2795
  [i915#2803]: ht

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/index.html

--===============1231147157391430915==
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
<tr><td><b>Series:</b></td><td>linux-next: manual merge of the drm-intel tr=
ee with the drm tree</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88033/">https://patchwork.freedesktop.org/series/88033/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19799/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19799/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9862_full -&gt; Patchwork_19799_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19799_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb6/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tgl=
b2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2369">i915#2369</a> / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb5/igt@gem_exec_balancer@hang.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-icl=
b2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1895">i915#1895</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shar=
d-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/sha=
rd-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/sh=
ard-tglb1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9862/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/=
shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842=
])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9862/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799=
/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#28=
49])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk2/igt@gem_exec_gttfill@all.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk7/i=
gt@gem_exec_gttfill@all.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl7/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a> ([i915#3183])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb5/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1979=
9/shard-skl5/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</=
a> / <a href=3D"ht">i915#2803</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb6/igt@gem_exec_schedule@u-fairslice@vcs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_197=
99/shard-tglb1/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-WARN</a> =
(<a href=3D"ht">i915#2803</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk5/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-glk1/=
igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl10/igt@gem_mmap_gtt@big-copy-odd.htm=
l">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb5/igt@gem_pread@exhaustion.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i91=
5#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-apl6/igt@gem_softpin@noreloc-s3.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb7/igt@gem_vm_create@destroy-race.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard=
-tglb5/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2795">i915#2795</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard=
-kbl4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#716=
])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl6/igt@gen9_exec_parse@allowed-single=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1436">i915#1436</a> / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb6/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb5/igt@kms_chamelium@hdmi-crc-multipl=
e.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl6/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/=
shard-skl8/igt@kms_color@pipe-c-ctm-blue-to-red.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl10/igt@kms_color_chamelium@pipe-b-ct=
m-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19799/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">F=
AIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-forked-move:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-apl6/igt@kms_cursor_legacy@pipe-d-forke=
d-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-k=
bl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#636])=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19799/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19799/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-snb5/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +85 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9862/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-k=
bl3/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issu=
e</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188=
">i915#1188</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl5/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-=
a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19799/shard-skl9/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pi=
pe-a.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2472">i915#2472</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19799/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-coverage-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-kbl2/igt@kms_plane_alpha_blend@pipe-d-c=
overage-7efc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-iclb=
5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/s=
hard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl7/igt@kms_vblank@pipe-d-query-forked=
-busy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +117 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-=
glk9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9862/shard-apl7/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-a=
pl6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9862/shard-kbl2/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-k=
bl1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19799/shard-snb5/igt@sysfs_clients@recycle-many.html=
">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19799/shard-skl6/igt@sysfs_clients@sema-10@rcs0.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#3026]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-apl6/igt@sysfs_clients@sema-10@vcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-=
apl8/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3026]) +1=
 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2481">i915#248=
1</a> / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19799/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19799/shard-glk7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19799/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19799/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9799/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19799/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610"=
>i915#1610</a> / <a href=3D"ht">i915#2803</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@gem_exec_sched=
ule@u-fairslice@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/118">i915#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19799/shard-glk7/igt@gem_exec_whisper@basic-queue=
s-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915#242=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19799/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/=
shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19799/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19799/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.h=
tml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19799/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x8=
5-offscreen.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19799/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible=
@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19799/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl6/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_197=
99/shard-kbl1/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-glk7/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#3026]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19799/shard-glk5/igt@sysfs_clients@sema-10@vcs0.html">PASS</a></l=
i>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19799/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb1/igt@kms_content_protection@atomic.html">FAIL</a> (=
[i915#3137]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19799/shard-iclb7/igt@kms_content_protection@atomic.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300">fdo#109300=
</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111066">fd=
o#111066</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb4/igt@kms_content_protection@dp-mst-type-1.html">SKI=
P</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19799/shard-iclb1/igt@kms_content_protection@dp-mst-type-1.htm=
l">FAIL</a> ([i915#3137])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb8/igt@kms_content_protection@uevent.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109300">fdo#10930=
0</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111066">f=
do#111066</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19799/shard-iclb1/igt@kms_content_protection@uevent.html">FAIL</a> =
([i915#3144])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19799/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html">S=
KIP</a> ([i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19799/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9862/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2724">i915#2724</a> / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
799/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19799/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl4/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19799/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-kbl3/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2505">i915#2505</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2724">i915#2724</a> / [i915#3002] / [i91=
5#716] / [i915#92])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9862/shard-tglb1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> / [i915#3002]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1979=
9/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19799/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-tglb5/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2667">i915#2667</a> / <a href=3D"ht">i915#2803</a> / [i915#3002])=
</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9862/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9862/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl3/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_98=
62/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9862/shard-skl3/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029">=
i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2724">i915#2724</a> / [i915#3002]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl2/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9799/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl5/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19799/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19799/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19799/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19799/shard-skl9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#=
2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724"=
>i915#2724</a> / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1231147157391430915==--

--===============1575875907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1575875907==--
