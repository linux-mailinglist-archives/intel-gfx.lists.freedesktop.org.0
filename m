Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097631B2B01
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 17:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5213E6E9A6;
	Tue, 21 Apr 2020 15:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E685A6E9A0;
 Tue, 21 Apr 2020 15:20:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6FEAA008A;
 Tue, 21 Apr 2020 15:20:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 15:20:27 -0000
Message-ID: <158748242784.17660.11710991093483046387@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421085939.31410-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421085939.31410-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_residual_state_=5BHWSP=5D_across_resume=2E_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/gt: Poison residual state [HWSP] across resume. (rev5)
URL   : https://patchwork.freedesktop.org/series/76100/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8342_full -> Patchwork_17399_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17399_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17399_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17399_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - shard-iclb:         [DMESG-FAIL][1] ([i915#1754]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb7/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-iclb3/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17399_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1119] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl8/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-apl2/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109349])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-hsw1/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-hsw8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vecs0}:
    - shard-skl:          [INCOMPLETE][21] ([i915#198]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][23] ([i915#1277]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-tglb7/igt@gem_exec_balancer@hang.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [INCOMPLETE][25] ([i915#155] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-apl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-snb:          [SKIP][29] ([fdo#109271]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge:
    - shard-glk:          [FAIL][31] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-glk8/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-glk2/igt@kms_cursor_edge_walk@pipe-a-256x256-left-edge.html

  * {igt@kms_flip@blocking-wf_vblank@c-edp1}:
    - shard-skl:          [FAIL][33] ([i915#34]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl5/igt@kms_flip@blocking-wf_vblank@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl3/igt@kms_flip@blocking-wf_vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][35] ([i915#79]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-kbl3/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-kbl2/igt@kms_setmode@basic.html

  * {igt@sysfs_heartbeat_interval@mixed@vecs0}:
    - shard-skl:          [INCOMPLETE][45] ([i915#1532]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][47] ([i915#658]) -> [SKIP][48] ([i915#588])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-mmap-type:
    - shard-snb:          [SKIP][49] ([fdo#109271]) -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8342/shard-snb1/igt@i915_pm_rpm@gem-mmap-type.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/shard-snb2/igt@i915_pm_rpm@gem-mmap-type.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8342 -> Patchwork_17399

  CI-20190529: 20190529
  CI_DRM_8342: 17407a9f61a0ee402254522e391a626acc4375ec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17399: fb5af459320991b4c67465de380617bc24bb1a2e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17399/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
