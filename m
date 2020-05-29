Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 075BA1E888F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 22:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3C306E967;
	Fri, 29 May 2020 20:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCC866E966;
 Fri, 29 May 2020 20:07:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D657FA47DF;
 Fri, 29 May 2020 20:07:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 29 May 2020 20:07:55 -0000
Message-ID: <159078287584.3331.2076914987413432991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529085809.23691-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200529085809.23691-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Add_a_few_asserts_aroun?=
 =?utf-8?q?d_handling_of_i915=5Frequest=5Fis=5Factive=28=29_=28rev6=29?=
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

Series: series starting with [1/2] drm/i915: Add a few asserts around handling of i915_request_is_active() (rev6)
URL   : https://patchwork.freedesktop.org/series/77781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8554_full -> Patchwork_17820_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17820_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_vm_create@isolation:
    - shard-apl:          [PASS][1] -> [TIMEOUT][2] ([i915#1635]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl1/igt@gem_vm_create@isolation.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl8/igt@gem_vm_create@isolation.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#93] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([i915#155])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl7/igt@i915_suspend@forcewake.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl4/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-glk5/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-glk8/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#129])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl4/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl6/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * {igt@gem_exec_balancer@bonded-dual}:
    - shard-tglb:         [FAIL][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-tglb2/igt@gem_exec_balancer@bonded-dual.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-tglb8/igt@gem_exec_balancer@bonded-dual.html

  * {igt@gem_exec_balancer@bonded-pair}:
    - shard-kbl:          [FAIL][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl6/igt@gem_exec_balancer@bonded-pair.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl7/igt@gem_exec_balancer@bonded-pair.html
    - shard-iclb:         [FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb4/igt@gem_exec_balancer@bonded-pair.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-iclb1/igt@gem_exec_balancer@bonded-pair.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-apl:          [FAIL][31] ([i915#1930]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl6/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][33] ([i915#1930]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-snb1/igt@gem_exec_reloc@basic-concurrent16.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-snb5/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-hsw:          [DMESG-WARN][35] ([i915#1927]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-hsw7/igt@gem_mmap_wc@read-write-distinct.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-hsw7/igt@gem_mmap_wc@read-write-distinct.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][37] ([i915#636] / [i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl1/igt@i915_suspend@forcewake.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][39] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-edp1}:
    - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][45] ([i915#61]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-hsw8/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][55] ([i915#1899]) -> [SKIP][56] ([i915#468])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][57] ([i915#1515]) -> [WARN][58] ([i915#1515])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][59] ([fdo#110321]) -> [TIMEOUT][60] ([i915#1319] / [i915#1635])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl7/igt@kms_content_protection@srm.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          [FAIL][61] ([i915#357]) -> [FAIL][62] ([i915#357] / [i915#93] / [i915#95])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-kbl6/igt@kms_content_protection@uevent.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-kbl7/igt@kms_content_protection@uevent.html
    - shard-apl:          [FAIL][63] ([i915#357]) -> [FAIL][64] ([i915#357] / [i915#95])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl4/igt@kms_content_protection@uevent.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][65] ([i915#1926]) -> [DMESG-FAIL][66] ([i915#1925] / [i915#1926])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-glk4/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-glk6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-apl:          [SKIP][67] ([fdo#109271]) -> [TIMEOUT][68] ([i915#1635])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][69] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8554/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1899]: https://gitlab.freedesktop.org/drm/intel/issues/1899
  [i915#1925]: https://gitlab.freedesktop.org/drm/intel/issues/1925
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1927]: https://gitlab.freedesktop.org/drm/intel/issues/1927
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#357]: https://gitlab.freedesktop.org/drm/intel/issues/357
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8554 -> Patchwork_17820

  CI-20190529: 20190529
  CI_DRM_8554: ac5c0538eb79074e97a7a5c03c285f339290d961 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17820: 319babfa21e7433aad375377305d5ad092615dfa @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17820/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
