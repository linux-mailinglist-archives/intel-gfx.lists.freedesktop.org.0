Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6352E7D1C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 00:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561E989211;
	Wed, 30 Dec 2020 23:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B90CC89131;
 Wed, 30 Dec 2020 23:06:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B20C8A9932;
 Wed, 30 Dec 2020 23:06:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 30 Dec 2020 23:06:08 -0000
Message-ID: <160936956869.26070.1469759477410357490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201230101625.25492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201230101625.25492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Only_disable_preemption_on_gen8_render_engines_=28r?=
 =?utf-8?q?ev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0985273792=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0985273792==
Content-Type: multipart/alternative;
 boundary="===============8409436250606992071=="

--===============8409436250606992071==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Only disable preemption on gen8 render engines (rev2)
URL   : https://patchwork.freedesktop.org/series/85311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9534_full -> Patchwork_19230_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19230_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-skl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][7] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#54]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([fdo#103375])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][14] -> [INCOMPLETE][15] ([i915#123])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#533])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1542])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl6/igt@perf@polling-parameterized.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl9/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@replace@rcs0:
    - shard-skl:          [FAIL][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html

  * {igt@gem_exec_fair@basic-deadline}:
    - shard-kbl:          [FAIL][23] ([i915#2846]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl2/igt@gem_exec_fair@basic-deadline.html
    - shard-tglb:         [FAIL][25] ([i915#2846]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb8/igt@gem_exec_fair@basic-deadline.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-tglb2/igt@gem_exec_fair@basic-deadline.html

  * {igt@gem_exec_fair@basic-flow@rcs0}:
    - shard-tglb:         [FAIL][27] ([i915#2842]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * {igt@gem_exec_fair@basic-pace@vcs0}:
    - shard-kbl:          [FAIL][29] ([i915#2842]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [DMESG-WARN][31] ([i915#118] / [i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][33] ([i915#2597]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][35] ([i915#54]) -> [PASS][36] +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [FAIL][37] ([i915#2346]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][41] ([i915#2122]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@sysfs_heartbeat_interval@mixed@vecs0:
    - shard-skl:          [FAIL][45] ([i915#1731]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vecs0.html

  
#### Warnings ####

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][47] ([i915#155]) -> [DMESG-WARN][48] ([i915#1602])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][49], [FAIL][50]) ([i915#1814] / [i915#2295] / [i915#483]) -> ([FAIL][51], [FAIL][52], [FAIL][53]) ([i915#1814] / [i915#2295] / [i915#483] / [i915#602])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl7/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl2/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-kbl2/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][54], [FAIL][55], [FAIL][56]) ([i915#1814] / [i915#2295] / [i915#2724] / [i915#483]) -> ([FAIL][57], [FAIL][58], [FAIL][59], [FAIL][60]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2724] / [i915#483])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb7/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb8/igt@runner@aborted.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb1/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb1/igt@runner@aborted.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb5/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb6/igt@runner@aborted.html
    - shard-glk:          ([FAIL][61], [FAIL][62], [FAIL][63]) ([i915#1814] / [i915#2295] / [k.org#202321]) -> ([FAIL][64], [FAIL][65], [FAIL][66]) ([i915#1814] / [i915#2295] / [i915#483] / [k.org#202321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk1/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk9/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk1/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk7/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk6/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][67], [FAIL][68]) ([i915#1814] / [i915#2029] / [i915#2295]) -> [FAIL][69] ([i915#2295] / [i915#483])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl3/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl10/igt@runner@aborted.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2597]: https://gitlab.freedesktop.org/drm/intel/issues/2597
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2802]: https://gitlab.freedesktop.org/drm/intel/issues/2802
  [i915#2803]: https://gitlab.freedesktop.org/drm/intel/issues/2803
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#602]: https://gitlab.freedesktop.org/drm/intel/issues/602
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9534 -> Patchwork_19230

  CI-20190529: 20190529
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19230: 9696c59a70b089eb02ad603705488b20f89d7024 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/index.html

--===============8409436250606992071==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Only disable preemption on gen8=
 render engines (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/85311/">https://patchwork.freedesktop.org/series/85311/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19230/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19230/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9534_full -&gt; Patchwork_19230_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19230_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19230/shard-glk8/igt@gem_exec_whisper@basic-contexts-forked-all.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
18">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19230/shard-skl2/igt@gem_render_copy@yf-tiled-to-ve=
box-linear.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-s=
kl3/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-2=
56x85-offscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19230/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i91=
5#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19230/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-g=
lk4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
230/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19230/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/sh=
ard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl6/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-=
skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@replace@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html">FAIL</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/=
shard-skl9/igt@gem_ctx_persistence@replace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-deadline}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9534/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230=
/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9534/shard-tglb8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1923=
0/shard-tglb2/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-flow@rcs0}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
230/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@gem_exec_fair@basic-pace@vcs0}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_192=
30/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk5/igt@gem_exec_whisper@basic-queues-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19230/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2597">i915#259=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19230/shard-tglb6/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19230/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x64-offscreen.h=
tml">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19230/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-varying=
-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915=
#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19230/shard-skl2/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19230/shard-skl8/igt@kms_flip@plain-flip-ts-check-interrup=
tible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb3/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/s=
hard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl5/igt@sysfs_heartbeat_interval@mixed@vecs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19230/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vecs0.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/155">i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19230/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-dp=
ms-suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19230/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/s=
hard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19230/shard-kbl2/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">=
i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/483">i915#483</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/602">i915#602</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9534/shard-iclb8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2724">i915#2724</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
230/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19230/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230/shard-iclb6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2724">i915#2724</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-glk1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-glk9/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9534/shard-glk1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19230=
/shard-glk7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19230/shard-glk6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
230/shard-glk5/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9534/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9534/shard-skl10/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2295">i915#2295</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19230/shard-skl3/igt@runner@aborted.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i9=
15#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
3">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9534 -&gt; Patchwork_19230</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9534: 797de7a6fea9a997e5b529af8994b2f251779d0a @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5930: 9efe3bfcb2b1c3613dddc8761425aa6943fa162d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19230: 9696c59a70b089eb02ad603705488b20f89d7024 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8409436250606992071==--

--===============0985273792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0985273792==--
