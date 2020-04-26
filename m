Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 536CA1B8F98
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 13:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21536E05C;
	Sun, 26 Apr 2020 11:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BC5B6E039;
 Sun, 26 Apr 2020 11:58:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86049A363B;
 Sun, 26 Apr 2020 11:58:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 26 Apr 2020 11:58:44 -0000
Message-ID: <158790232453.14660.8344415650714292888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200426094140.17125-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200426094140.17125-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Apply_the_magic_PM_interval_roundup_to_all!?=
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

Series: drm/i915/gt: Apply the magic PM interval roundup to all!
URL   : https://patchwork.freedesktop.org/series/76489/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8369_full -> Patchwork_17465_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17465_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - shard-snb:          [PASS][1] -> [DMESG-FAIL][2] ([i915#1791])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-snb6/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-snb6/igt@i915_selftest@live@gt_pm.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#53] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-kbl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#53] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-apl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-skl:          [FAIL][15] ([i915#1528]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          [INCOMPLETE][19] ([CI#80]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-kbl3/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-kbl7/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][21] ([i915#69]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2}:
    - shard-glk:          [FAIL][25] ([i915#79]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][29] ([i915#61]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-hsw2/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-hsw4/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl4/igt@kms_hdr@bpc-switch.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][33] ([i915#648] / [i915#69]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-iclb8/igt@kms_psr@psr2_primary_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [INCOMPLETE][39] -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-skl2/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][41] ([i915#454]) -> [SKIP][42] ([i915#468])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [FAIL][45] ([i915#95]) -> [DMESG-FAIL][46] ([i915#180] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8369 -> Patchwork_17465

  CI-20190529: 20190529
  CI_DRM_8369: ed7a286b5d02de0eb72f46665f2d6accce20a179 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17465: 47b8830170c1aa1accb1e7ddf995f3dc6de761b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17465/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
