Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B40308CB0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 19:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19056EBED;
	Fri, 29 Jan 2021 18:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B9B026EBD0;
 Fri, 29 Jan 2021 18:43:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 78F7FA00CC;
 Fri, 29 Jan 2021 18:43:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 Jan 2021 18:43:05 -0000
Message-ID: <161194578545.15523.5793932110160121638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210129120620.6516-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210129120620.6516-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ignore_error_capturing_a_closed_context?=
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
Content-Type: multipart/mixed; boundary="===============0755891259=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0755891259==
Content-Type: multipart/alternative;
 boundary="===============2006259034029257063=="

--===============2006259034029257063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ignore error capturing a closed context
URL   : https://patchwork.freedesktop.org/series/86447/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9699_full -> Patchwork_19541_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19541_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19541_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19541_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  
Known issues
------------

  Here are the changes found in Patchwork_19541_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2846])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_schedule@u-fairslice-all:
    - shard-tglb:         [PASS][12] -> [DMESG-WARN][13] ([i915#2803]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb8/igt@gem_exec_schedule@u-fairslice-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb6/igt@gem_exec_schedule@u-fairslice-all.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1610])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#1699]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2521])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2705])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][21] ([fdo#109271]) +51 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl5/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][25] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +5 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#2598])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#2122]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#2642])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2672])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +40 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1188])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#648])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][37] ([fdo#108145] / [i915#265])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][38] ([fdo#108145] / [i915#265])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#658])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068] / [i915#658])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb6/igt@kms_psr@psr2_dpms.html

  * igt@kms_rmfb@close-fd:
    - shard-skl:          [PASS][47] -> [DMESG-WARN][48] ([i915#1982]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl2/igt@kms_rmfb@close-fd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl9/igt@kms_rmfb@close-fd.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][49] ([IGT#2])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#2437])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#1542])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-glk7/igt@perf@polling-parameterized.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk1/igt@perf@polling-parameterized.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [PASS][53] -> [INCOMPLETE][54] ([i915#409])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb4/igt@prime_vgem@sync@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb7/igt@prime_vgem@sync@rcs0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#1037] / [i915#198]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][57] ([i915#2842]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][59] ([i915#2842]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][61] ([i915#2842]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][63] ([i915#118] / [i915#95]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][65] ([i915#198] / [i915#2405]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][67] ([i915#1436] / [i915#716]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@mock@requests:
    - shard-apl:          [INCOMPLETE][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl2/igt@i915_selftest@mock@requests.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl1/igt@i915_selftest@mock@requests.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][71] ([i915#1982]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_color@pipe-a-legacy-gamma:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#71]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl3/igt@kms_color@pipe-a-legacy-gamma.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_color@pipe-a-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:
    - shard-skl:          [FAIL][77] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][79] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][81] ([i915#2122]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][83] ([i915#2598]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][85] ([i915#2122]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [FAIL][87] ([i915#49]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180] / [i915#78]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html

  * igt@perf@short-reads:
    - shard-hsw:          [FAIL][95] ([i915#51]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-hsw7/igt@perf@short-reads.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-hsw1/igt@perf@short-reads.html

  * {igt@sysfs_clients@sema-10@vcs0}:
    - shard-apl:          [SKIP][97] ([fdo#109271]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html

  * {igt@sysfs_clients@split-25@vecs0}:
    - shard-skl:          [SKIP][99] ([fdo#109271]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl7/igt@sysfs_clients@split-25@vecs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl1/igt@sysfs_clients@split-25@vecs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][101] -> [FAIL][102] ([i915#2842])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][103] ([i915#658]) -> [SKIP][104] ([i915#588])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][105] ([i915#2681] / [i915#2684]) -> [WARN][106] ([i915#1804] / [i915#2684])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][107] ([i915#658]) -> [SKIP][108] ([i915#2920]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][109] ([i915#2920]) -> [SKIP][110] ([i915#658]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114]) ([i915#2295] / [i915#2505] / [i915#92]) -> ([FAIL][115], [FAIL][116], [FAIL][117]) ([i915#2295])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl6/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl1/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl7/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl7/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl4/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][118], [FAIL][119], [FAIL][120]) ([i915#2295] / [i915#2724]) -> ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#409])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb3/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb5/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#2295] / [i915#2722]) -> ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#1610] / [i915#2295] / [i915#2426])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl2/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][132], [FAIL][133], [FAIL][134]) ([i915#2295] / [i915#2667]) -> ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2667] / [i915#2803])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1436] / [i915#2295] / [i915#2426]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2295] / [i915#2426])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl9/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl6/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl3/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl4/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2667]: https://gitlab.freedesktop.org/drm/intel/issues/2667
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/index.html

--===============2006259034029257063==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ignore error capturing a closed=
 context</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86447/">https://patchwork.freedesktop.org/series/86447/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19541/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19541/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9699_full -&gt; Patchwork_19541_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19541_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19541_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19541_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19541/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html=
">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19541_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shar=
d-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541=
/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#284=
2]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9699/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
41/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9699/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1954=
1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#=
2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice-all:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb8/igt@gem_exec_schedule@u-fairslice-all.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1954=
1/shard-tglb6/igt@gem_exec_schedule@u-fairslice-all.html">DMESG-WARN</a> ([=
i915#2803]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-apl8/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1954=
1/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@gem_userptr_blits@process-exit=
-mmap@gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19541/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i91=
5#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_big_joiner@basic.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl5/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19541/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">=
FAIL</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-1=
28x42-onscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-apl1/igt@kms_cursor_legacy@cursora-vs-f=
lipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19541/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl10/igt@kms_flip@plain-flip-fb-recrea=
te@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_frontbuffer_tracking@psr-r=
gb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl=
9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19541/shard-skl4/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">INCOMPLETE</a> ([i915#648])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19541/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb=
5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb6/ig=
t@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rmfb@close-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl2/igt@kms_rmfb@close-fd.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl9/igt=
@kms_rmfb@close-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/=
2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-skl6/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-=
glk1/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb4/igt@prime_vgem@sync@rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb7=
/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl5/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19541/shard-skl5/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19541/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19541/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19541/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-glk6/igt@gem_exec_whisper@basic-forked-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19541/shard-glk9/igt@gem_exec_whisper@basic-forked-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl8/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#240=
5</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19541/shard-skl6/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915=
#1436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19541/shard-skl10/igt@gen9_exec_parse@allowed-single.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-apl2/igt@i915_selftest@mock@requests.html">INCOMPLETE</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541=
/shard-apl1/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19541/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-legacy-gamma:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl3/igt@kms_color@pipe-a-legacy-gamma.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">fdo#108145=
</a> / [i915#71]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19541/shard-skl8/igt@kms_color@pipe-a-legacy-gamma.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19541/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-ra=
ndom.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-u=
ntiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/177">i915#177</a> / [i915#52] / [i915#54]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_draw_cr=
c@draw-method-xrgb2101010-mmap-gtt-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#1=
80</a> / [i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19541/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptibl=
e@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19541/shard-glk2/igt@kms_flip@2x-plain-f=
lip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19541/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19541/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-in=
terruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-in=
dfb-draw-blt.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19541/shard-skl8/igt@kms_frontbuffer_track=
ing@psr-1p-primscrn-spr-indfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19541/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-con=
stant-alpha-min.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9541/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-rpm.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / [i915#78]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19541/shard-kbl2/igt@kms_vblank@pipe-c-ts-continu=
ation-dpms-rpm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-hsw7/igt@perf@short-reads.html">FAIL</a> ([i915#51]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shar=
d-hsw1/igt@perf@short-reads.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@sema-10@vcs0}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-apl1/igt@sysfs_clients@sema-10@vcs0.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1954=
1/shard-apl7/igt@sysfs_clients@sema-10@vcs0.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@split-25@vecs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl7/igt@sysfs_clients@split-25@vecs0.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
541/shard-skl1/igt@sysfs_clients@split-25@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/sh=
ard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19541/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19541/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-iclb2/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19541/shard-iclb6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9699/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2505">i915#2505</a> / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19541/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1954=
1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19541/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/229=
5">i915#2295</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-iclb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9699/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-=
iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19541/shard-iclb7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/s=
hard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19541/shard-iclb8/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295=
">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2724">i915#2724</a> / [i915#409])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9699/shard-apl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-apl=
8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19541/shard-apl7/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-=
apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19541/shard-apl1/igt@runner@aborted.html">FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#=
1610</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295"=
>i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2426">i915#2426</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9699/shard-tglb6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-=
tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19541/shard-tglb3/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/s=
hard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19541/shard-tglb7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
541/shard-tglb5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1764">i915#1764</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2667">i915#2667</a> /=
 [i915#2803])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9699/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9699/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9699/shard-skl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_96=
99/shard-skl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard-sk=
l6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19541/shard-skl2/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/shard=
-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19541/shard-skl4/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19541/sh=
ard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</=
p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============2006259034029257063==--

--===============0755891259==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0755891259==--
