Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5945C28F8E0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 20:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD17E6E966;
	Thu, 15 Oct 2020 18:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E91126E964;
 Thu, 15 Oct 2020 18:49:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0618A7DFB;
 Thu, 15 Oct 2020 18:49:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 15 Oct 2020 18:49:26 -0000
Message-ID: <160278776688.13181.18047921169017429697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015122138.30161-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201015122138.30161-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Mark_ininitial_fb_?=
 =?utf-8?q?obj_as_WT_on_eLLC_machines_to_avoid_rcu_lockup_during_fbdev_ini?=
 =?utf-8?q?t?=
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
Content-Type: multipart/mixed; boundary="===============0140647084=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0140647084==
Content-Type: multipart/alternative;
 boundary="===============4929995502263848740=="

--===============4929995502263848740==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915: Mark ininitial fb obj as WT on eLLC machines to avoid rcu lockup during fbdev init
URL   : https://patchwork.freedesktop.org/series/82717/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9140_full -> Patchwork_18705_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18705_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18705_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18705_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@reset-stress:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl3/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl9/igt@gem_eio@reset-stress.html

  
Known issues
------------

  Here are the changes found in Patchwork_18705_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#1635] / [i915#79])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-dp1:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1635] / [i915#1982]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * igt@kms_flip@modeset-vs-vblank-race@b-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#62])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@kms_flip@modeset-vs-vblank-race@b-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#2122])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane@plane-position-covered-pipe-b-planes:
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl10/igt@kms_plane@plane-position-covered-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk9/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1731])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Possible fixes ####

  * {igt@gem_exec_capture@pi@rcs0}:
    - shard-glk:          [INCOMPLETE][25] ([i915#2553]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk6/igt@gem_exec_capture@pi@rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk2/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][27] ([i915#2389]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_mmap_offset@blt-coherency:
    - shard-glk:          [FAIL][31] ([i915#2328]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk1/igt@gem_mmap_offset@blt-coherency.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk1/igt@gem_mmap_offset@blt-coherency.html

  * igt@gem_softpin@evict-active-interruptible:
    - shard-skl:          [DMESG-WARN][33] ([i915#1982]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl10/igt@gem_softpin@evict-active-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl6/igt@gem_softpin@evict-active-interruptible.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-tglb:         [FAIL][35] ([i915#1172]) -> [PASS][36] +27 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-kbl:          [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-apl:          [DMESG-WARN][39] ([i915#1635] / [i915#1982]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [FAIL][41] ([i915#2416]) -> [PASS][42] +53 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:
    - shard-tglb:         [DMESG-FAIL][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglb:         [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl9/igt@kms_hdr@bpc-switch.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][49] ([fdo#109441]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [FAIL][51] ([i915#1722]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl2/igt@perf@polling-small-buf.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl2/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][53] ([i915#454]) -> [INCOMPLETE][54] ([i915#198])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [TIMEOUT][55] ([i915#1319] / [i915#1635]) -> [FAIL][56] ([fdo#110321] / [fdo#110336] / [i915#1635])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@kms_content_protection@legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][57] ([i915#1319] / [i915#1635]) -> [FAIL][58] ([fdo#110321] / [i915#1635])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_content_protection@lic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][59] ([fdo#110321] / [i915#1635]) -> [TIMEOUT][60] ([i915#1319] / [i915#1635])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl2/igt@kms_content_protection@srm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][61] ([fdo#109349]) -> [DMESG-WARN][62] ([i915#1226])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1172]: https://gitlab.freedesktop.org/drm/intel/issues/1172
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2328]: https://gitlab.freedesktop.org/drm/intel/issues/2328
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2553]: https://gitlab.freedesktop.org/drm/intel/issues/2553
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9140 -> Patchwork_18705

  CI-20190529: 20190529
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18705: ab8d7efdf06eb4e103942192746a2999155a8d59 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/index.html

--===============4929995502263848740==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915: Mark ininitial fb obj as WT on eLLC machines to avoid rcu lockup during fbdev init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82717/">https://patchwork.freedesktop.org/series/82717/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9140_full -&gt; Patchwork_18705_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18705_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18705_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18705_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_eio@reset-stress:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl3/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl9/igt@gem_eio@reset-stress.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18705_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk8/igt@kms_cursor_edge_walk@pipe-c-128x128-top-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@kms_flip@modeset-vs-vblank-race@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl2/igt@kms_flip@modeset-vs-vblank-race@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered-pipe-b-planes:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl8/igt@kms_plane@plane-position-covered-pipe-b-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl10/igt@kms_plane@plane-position-covered-pipe-b-planes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk9/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk8/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#1731</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@gem_exec_capture@pi@rcs0}:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk6/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2553">i915#2553</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk2/igt@gem_exec_capture@pi@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk7/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk4/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@blt-coherency:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-glk1/igt@gem_mmap_offset@blt-coherency.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2328">i915#2328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-glk1/igt@gem_mmap_offset@blt-coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-active-interruptible:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl10/igt@gem_softpin@evict-active-interruptible.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl6/igt@gem_softpin@evict-active-interruptible.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1172">i915#1172</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-kbl6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-kbl2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">PASS</a> +53 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb7/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl2/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl2/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-skl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-skl5/igt@i915_pm_dc@dc6-dpms.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl4/igt@kms_content_protection@legacy.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl1/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=110336">fdo#110336</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl1/igt@kms_content_protection@lic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl8/igt@kms_content_protection@lic.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-apl2/igt@kms_content_protection@srm.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110321">fdo#110321</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-apl2/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9140/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109349">fdo#109349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18705/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (12 -&gt; 11)</h2>
<p>Missing    (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9140 -&gt; Patchwork_18705</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9140: 114b3ff35870623fbd7b7aa580e4b43c690edace @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5815: 0c3b29498a624ad42033a219d031cb9dd475405b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18705: ab8d7efdf06eb4e103942192746a2999155a8d59 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4929995502263848740==--

--===============0140647084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0140647084==--
