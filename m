Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD319DC38
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 18:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F6F6EC25;
	Fri,  3 Apr 2020 16:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B63976EC24;
 Fri,  3 Apr 2020 16:57:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE07CA0138;
 Fri,  3 Apr 2020 16:57:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 16:57:00 -0000
Message-ID: <158593302068.13351.12614786197703622012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403073657.13427-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403073657.13427-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_setting_timer-=3Eexpires_to_0?=
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

Series: drm/i915: Avoid setting timer->expires to 0
URL   : https://patchwork.freedesktop.org/series/75447/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8243_full -> Patchwork_17195_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17195_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17195_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17195_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb1/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb5/igt@gem_tiled_swapping@non-threaded.html
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-glk7/igt@gem_tiled_swapping@non-threaded.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-glk4/igt@gem_tiled_swapping@non-threaded.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@write-busy@vcs0}:
    - shard-glk:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-glk9/igt@gem_wait@write-busy@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-glk9/igt@gem_wait@write-busy@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17195_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][11] -> [INCOMPLETE][12] ([i915#61])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-hsw6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-hsw2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#52] / [i915#54] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-apl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-apl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb4/igt@prime_busy@after-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb3/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [FAIL][25] ([i915#1528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl5/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [FAIL][27] ([i915#1528]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          [FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-hsw:          [FAIL][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-hsw4/igt@gem_tiled_swapping@non-threaded.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-hsw6/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglb:         [FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-tglb2/igt@gem_tiled_swapping@non-threaded.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-tglb1/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][35] ([i915#454]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [FAIL][37] ([i915#1066]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-kbl4/igt@i915_suspend@forcewake.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-apl:          [FAIL][41] ([i915#54] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][43] ([IGT#5]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [INCOMPLETE][45] ([i915#61]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-hsw6/igt@kms_flip@flip-vs-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-hsw1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][47] ([i915#1188]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_psr@suspend:
    - shard-skl:          [INCOMPLETE][55] ([i915#198]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl6/igt@kms_psr@suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl7/igt@kms_psr@suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-skl3/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-skl8/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8243/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8243 -> Patchwork_17195

  CI-20190529: 20190529
  CI_DRM_8243: 45ccb1b8606b6ba1a5d4f8a8b4dda27bd8dbb04c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17195: 9001132185073e70b7bcdfee5689aeb8d519a79a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17195/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
