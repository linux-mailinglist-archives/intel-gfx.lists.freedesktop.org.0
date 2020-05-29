Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013981E8B5E
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 00:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581536E982;
	Fri, 29 May 2020 22:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6E5C56E97F;
 Fri, 29 May 2020 22:31:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68460A0BA8;
 Fri, 29 May 2020 22:31:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 22:31:15 -0000
Message-ID: <159079147539.3331.16425793717765632668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529183204.16850-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529183204.16850-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gem=3A_Taint_all_shrinkabl?=
 =?utf-8?q?e_object_locks?=
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

Series: series starting with [1/2] drm/i915/gem: Taint all shrinkable object locks
URL   : https://patchwork.freedesktop.org/series/77799/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8554_full -> Patchwork_17821_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17821_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#183])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl4/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl8/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_vm_create@isolation:
    - shard-apl:          [PASS][3] -> [TIMEOUT][4] ([i915#1635]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl1/igt@gem_vm_create@isolation.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl4/igt@gem_vm_create@isolation.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl10/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl9/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#129])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl4/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#72])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#1566] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_exec_balancer@bonded-pair}:
    - shard-kbl:          [FAIL][27] ([i915#1967]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl6/igt@gem_exec_balancer@bonded-pair.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl4/igt@gem_exec_balancer@bonded-pair.html
    - shard-iclb:         [FAIL][29] ([i915#1967]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb4/igt@gem_exec_balancer@bonded-pair.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-iclb8/igt@gem_exec_balancer@bonded-pair.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-skl:          [FAIL][31] ([i915#1930]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl7/igt@gem_exec_reloc@basic-concurrent16.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-hsw:          [DMESG-WARN][33] ([i915#1927]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-hsw7/igt@gem_mmap_wc@read-write-distinct.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-hsw4/igt@gem_mmap_wc@read-write-distinct.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][35] ([i915#636] / [i915#69]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl1/igt@i915_suspend@forcewake.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl5/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][37] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-glk1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][41] ([i915#61]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][49] ([fdo#108145] / [i915#265]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][51] ([i915#1515]) -> [WARN][52] ([i915#1515])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][53] ([i915#1319] / [i915#1635]) -> [FAIL][54] ([fdo#110321])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl4/igt@kms_content_protection@lic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl6/igt@kms_content_protection@lic.html
    - shard-kbl:          [TIMEOUT][55] ([i915#1319]) -> [FAIL][56] ([fdo#110321])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl1/igt@kms_content_protection@lic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][57] ([fdo#110321]) -> [TIMEOUT][58] ([i915#1319])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl7/igt@kms_content_protection@srm.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][59] ([i915#357]) -> [FAIL][60] ([i915#357] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl6/igt@kms_content_protection@uevent.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-kbl1/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][61] ([i915#357]) -> [FAIL][62] ([i915#357] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl4/igt@kms_content_protection@uevent.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl8/igt@kms_content_protection@uevent.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          [SKIP][63] ([fdo#109271]) -> [TIMEOUT][64] ([i915#1635])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-apl4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][65] ([fdo#109642] / [fdo#111068]) -> [FAIL][66] ([i915#608])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1967]: https://gitlab.freedesktop.org/drm/intel/issues/1967
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8554 -> Patchwork_17821

  CI-20190529: 20190529
  CI_DRM_8554: ac5c0538eb79074e97a7a5c03c285f339290d961 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17821: 35c96a6a980bde9bcf4baf8a35ee85b468640124 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17821/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
