Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB141C3AE1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710BD6E3EB;
	Mon,  4 May 2020 13:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E47296E3E7;
 Mon,  4 May 2020 13:06:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE7DAA011B;
 Mon,  4 May 2020 13:06:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 13:06:04 -0000
Message-ID: <158859756490.5816.2329496175320138123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200503203108.15420-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200503203108.15420-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_using_simd_from_interrupt_context?=
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

Series: drm/i915: Avoid using simd from interrupt context
URL   : https://patchwork.freedesktop.org/series/76882/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8415_full -> Patchwork_17560_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17560_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@dpms-vs-vblank-race@b-hdmi-a2}:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk6/igt@kms_flip@dpms-vs-vblank-race@b-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-glk9/igt@kms_flip@dpms-vs-vblank-race@b-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_17560_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109349])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl7/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling-y.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#699] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl2/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-kbl1/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@rcs0:
    - shard-skl:          [FAIL][17] ([i915#1472]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl9/igt@gem_exec_fence@basic-await@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl5/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][19] ([fdo#109276]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@gem_exec_schedule@pi-distinct-iova@vecs0}:
    - shard-glk:          [FAIL][21] ([i915#859]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova@vecs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][23] ([i915#716]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl2/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [FAIL][25] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#300]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-skl:          [FAIL][29] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][31] ([i915#79]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1}:
    - shard-skl:          [FAIL][33] ([i915#34]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][41] ([i915#173]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb1/igt@kms_psr@no_drrs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-iclb1/igt@kms_psr@psr2_cursor_render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][47] ([i915#1731]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-skl9/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][49] ([i915#454]) -> [SKIP][50] ([i915#468])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8415/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1472]: https://gitlab.freedesktop.org/drm/intel/issues/1472
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8415 -> Patchwork_17560

  CI-20190529: 20190529
  CI_DRM_8415: a20d5d8cc2cec9962cf4241fd8ac4b0c4bb4d9d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17560: 6dbd6bdbb9720d0fb80ad83aeab2ee13048852b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17560/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
