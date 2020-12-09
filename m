Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3CB2D37DA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 01:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018316E201;
	Wed,  9 Dec 2020 00:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E9A56E0D4;
 Wed,  9 Dec 2020 00:36:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 465B4A9A42;
 Wed,  9 Dec 2020 00:36:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 09 Dec 2020 00:36:37 -0000
Message-ID: <160747419726.4256.17423039600665292262@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201208185702.31852-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201208185702.31852-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Disable_preparser_around_MI=5FSEMAPHORE=5FWAIT?=
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
Content-Type: multipart/mixed; boundary="===============1753903144=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1753903144==
Content-Type: multipart/alternative;
 boundary="===============8475931117801367772=="

--===============8475931117801367772==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Disable preparser around MI_SEMAPHORE_WAIT
URL   : https://patchwork.freedesktop.org/series/84699/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9462_full -> Patchwork_19082_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9462_full and Patchwork_19082_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19082_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@no-blt:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([fdo#109283])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gem_exec_params@no-blt.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][2] ([i915#2389])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-glk6/igt@gem_exec_whisper@basic-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-glk6/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-iclb:         NOTRUN -> [SKIP][6] ([fdo#112306])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-iclb:         NOTRUN -> [SKIP][7] ([fdo#109303])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-iclb:         NOTRUN -> [FAIL][8] ([i915#1149] / [i915#315])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][11] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#109278]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#52] / [i915#54])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#109274]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +7 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109280]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#1187])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_hdr@static-swap.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145] / [i915#265]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109642] / [fdo#111068])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109441]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109441])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#1542])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-glk7/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-glk7/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109291])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@prime_nv_pcopy@test3_2.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts@rcs0:
    - shard-iclb:         [INCOMPLETE][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb4/igt@gem_exec_parallel@contexts@rcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gem_exec_parallel@contexts@rcs0.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][40] ([i915#2597]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-tglb3/igt@kms_async_flips@test-time-stamp.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [FAIL][42] ([i915#54]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][44] ([i915#79]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          [DMESG-WARN][46] ([i915#42]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-snb6/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][50] ([i915#2684]) -> [WARN][51] ([i915#2681] / [i915#2684])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][52] ([i915#1804] / [i915#2684]) -> [WARN][53] ([i915#2681] / [i915#2684])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][54] ([i915#2295] / [i915#2722] / [i915#483]) -> ([FAIL][55], [FAIL][56], [FAIL][57]) ([i915#1436] / [i915#2029] / [i915#2295] / [i915#2722] / [i915#483])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9462/shard-skl3/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl4/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl3/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9462 -> Patchwork_19082

  CI-20190529: 20190529
  CI_DRM_9462: b358df960435469848e291bbebbeb4eca1ff32af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19082: be6cd228954cad6c05cd167d6f30582b538c6668 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/index.html

--===============8475931117801367772==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Disable preparser around MI_SEM=
APHORE_WAIT</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84699/">https://patchwork.freedesktop.org/series/84699/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19082/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19082/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9462_full -&gt; Patchwork_19082_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9462_full and Patchwork_19=
082_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19082_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gem_exec_params@no-blt.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109283"=
>fdo#109283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb2/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-glk6/igt@gem_exec_whisper@basic-contexts.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/s=
hard-glk6/igt@gem_exec_whisper@basic-contexts.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i=
915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@gen9_exec_parse@bb-chained.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112=
306">fdo#112306</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@i915_query@query-topology-kno=
wn-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color@pipe-a-ctm-0-25.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/114=
9">i915#1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/315">i915#315</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl9/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-s=
kl6/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color_chamelium@pipe-c-ct=
m-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_color_chamelium@pipe-d-de=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19082/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-=
128x128-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xtiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-xti=
led.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19082/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-pwrit=
e-xtiled.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/52">i915#52</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_flip@2x-flip-vs-rmfb.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
4">fdo#109274</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19082/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/s=
hard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-skl5/igt@kms_frontbuffer_tracking@fbcps=
r-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +7 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-shrfb-fliptrack.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-=
skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_hdr@static-swap.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1187">i91=
5#1187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19082/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-iclb=
4/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/=
shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/shard-=
glk7/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19082/shard-iclb1/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291"=
>fdo#109291</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@contexts@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb4/igt@gem_exec_parallel@contexts@rcs0.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19082/shard-iclb1/igt@gem_exec_parallel@contexts@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19082/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19082/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.htm=
l">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19082/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interr=
uptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-snb6/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/42">i915#=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19082/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19082/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +2 sim=
ilar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19082/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19082/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#=
2684</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9462/shard-skl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19082/s=
hard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19082/shard-skl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1908=
2/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>=
)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9462 -&gt; Patchwork_19082</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9462: b358df960435469848e291bbebbeb4eca1ff32af @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19082: be6cd228954cad6c05cd167d6f30582b538c6668 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8475931117801367772==--

--===============1753903144==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1753903144==--
