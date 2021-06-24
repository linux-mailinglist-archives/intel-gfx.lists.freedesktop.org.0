Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FD63B31C4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 16:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 847F06EC14;
	Thu, 24 Jun 2021 14:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91F476EC1A;
 Thu, 24 Jun 2021 14:50:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A9E5A7DFB;
 Thu, 24 Jun 2021 14:50:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 24 Jun 2021 14:50:27 -0000
Message-ID: <162454622753.1853.8885127637563522111@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624083113.365039-1-matthew.auld@intel.com>
In-Reply-To: <20210624083113.365039-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dg1=3A_Compute_MEM_Bandwid?=
 =?utf-8?q?th_using_MCHBAR?=
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
Content-Type: multipart/mixed; boundary="===============1393514751=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1393514751==
Content-Type: multipart/alternative;
 boundary="===============9205425622258187633=="

--===============9205425622258187633==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/dg1: Compute MEM Bandwidth using MCHBAR
URL   : https://patchwork.freedesktop.org/series/91848/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10273_full -> Patchwork_20451_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20451_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20451_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20451_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@gem_exec_endless@dispatch@rcs0.html

  
#### Warnings ####

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][3] ([i915#658]) -> [SKIP][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs}:
    - shard-tglb:         NOTRUN -> [SKIP][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs.html

  
Known issues
------------

  Here are the changes found in Patchwork_20451_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_ctx_persistence@clone.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#2369])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl3/igt@gem_exec_capture@pi@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_params@no-blt:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][16] ([i915#3633]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#307] / [i915#3468])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#2428])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#307])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][23] ([i915#2658])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +70 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][28] ([i915#3002])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][29] ([i915#2724])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@bb-large:
    - shard-glk:          NOTRUN -> [FAIL][30] ([i915#3296])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@gen9_exec_parse@bb-large.html
    - shard-apl:          NOTRUN -> [FAIL][31] ([i915#3296])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][32] ([i915#454])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][33] ([i915#1804] / [i915#2684])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +194 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_chamelium@dp-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-crc-single:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_chamelium@dp-crc-single.html

  * igt@kms_chamelium@dp-hpd-storm-disable:
    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_chamelium@dp-hpd-storm-disable.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109300] / [fdo#111066])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][45] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][46] ([i915#2105])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278] / [fdo#109279])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#2405] / [i915#300])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][52] ([fdo#109271]) +292 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2346] / [i915#533])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([IGT#6])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#426])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2672]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +11 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +23 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#111825]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271]) +35 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1188])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_invalid_dotclock:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109310])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_invalid_dotclock.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
    - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][74] ([i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][75] ([i915#265]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][76] -> [FAIL][77] ([fdo#108145] / [i915#265]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278]) +8 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#658])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#658]) +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][84] -> [SKIP][85] ([fdo#109642] / [fdo#111068] / [i915#658])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109441])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#533]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@flipline:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109502])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_vrr@flipline.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2530])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb6/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [i915#2530])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#1722])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl8/igt@perf@polling-small-buf.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109291]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@syncobj_wait@reset-signaled:
    - shard-glk:          [PASS][94] -> [DMESG-WARN][95] ([i915#118] / [i915#95])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@syncobj_wait@reset-signaled.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@syncobj_wait@reset-signaled.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25:
    - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][99] ([i915#2410]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [FAIL][103] ([i915#2842]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][105] ([i915#2849]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [FAIL][107] ([i915#3160]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@gem_mmap_offset@clear.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@gem_mmap_offset@clear.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [DMESG-WARN][109] -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb8/igt@i915_pm_dc@dc5-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb6/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][111] ([i915#118] / [i915#95]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][113] ([i915#3621]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][115] ([i915#2346]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][117] ([i915#198]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][119] ([i915#79]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
    - shard-tglb:         [INCOMPLETE][121] -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-tglb8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][123] ([i915#180]) -> [PASS][124] +4 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [SKIP][125] ([fdo#109441]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][127] ([i915#198] / [i915#2405]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][129] ([i915#2680]) -> [WARN][130] ([i915#2684])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][131] -> [SKIP][132] ([i915#658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#1814] / [i915#3002]) -> ([FAIL][138], [FAIL][139]) ([i915#3002])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb5/igt@runner@aborted.html
    - shard-apl:          ([FAIL][140], [FAIL][141], [FAIL][142]) ([i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][143], [FAIL][144]) ([i915#3002] / [i915#3363])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl1/igt@runner@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/index.html

--===============9205425622258187633==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/dg1: Compute MEM Bandwidth using MCHBAR</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91848/">https://patchwork.freedesktop.org/series/91848/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10273_full -&gt; Patchwork_20451_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20451_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20451_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20451_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_endless@dispatch@rcs0:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs}:<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_ccs.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20451_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_ctx_persistence@clone.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl3/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@gem_exec_params@no-blt.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#3633]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">FAIL</a> ([i915#307] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk9/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109271]) +194 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-single:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_chamelium@dp-crc-single.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_chamelium@dp-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb7/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#2405] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +292 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-WARN</a> ([IGT#6])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([fdo#109271]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_dotclock:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_invalid_dotclock.html">SKIP</a> ([fdo#109310])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@kms_vblank@pipe-d-wait-idle.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb6/igt@nouveau_crc@pipe-a-source-rg.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl8/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl10/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@reset-signaled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@syncobj_wait@reset-signaled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@syncobj_wait@reset-signaled.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-apl8/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl4/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb8/igt@i915_pm_dc@dc5-psr.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-WARN</a> ([i915#3621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> ([i915#198]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-tglb8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-tglb2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198] / [i915#2405]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#2680]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb4/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-iclb1/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#3002]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20451/shard-iclb5/igt@runner@aborted.html">FAIL</a>) ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10273/shard-apl1/igt@runner@">FAIL</a>) ([i915#1814] / [i915#3002] / [i915#3363]) -&gt; ([FAIL][143], [FAIL][144]) ([i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============9205425622258187633==--

--===============1393514751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1393514751==--
