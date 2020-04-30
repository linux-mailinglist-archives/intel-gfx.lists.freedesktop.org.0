Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 724D31BF1B2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 09:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD89A6EB6B;
	Thu, 30 Apr 2020 07:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EBEA6EB62;
 Thu, 30 Apr 2020 07:41:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 486C1A010F;
 Thu, 30 Apr 2020 07:41:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 07:41:59 -0000
Message-ID: <158823251926.31920.5692072554901299955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429205446.3259-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200429205446.3259-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/gt=3A_Always_enable_b?=
 =?utf-8?q?usy-stats_for_execlists?=
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

Series: series starting with [CI,1/6] drm/i915/gt: Always enable busy-stats for execlists
URL   : https://patchwork.freedesktop.org/series/76744/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8395_full -> Patchwork_17522_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17522_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17522_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17522_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-apl:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-apl3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-apl8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-glk:          [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk7/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
Known issues
------------

  Here are the changes found in Patchwork_17522_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][7] -> [INCOMPLETE][8] ([i915#58] / [k.org#198133])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk1/igt@gem_exec_whisper@basic-contexts-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-tglb:         [FAIL][17] ([i915#413]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-tglb6/igt@i915_pm_rps@min-max-config-loaded.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-tglb6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-apl:          [FAIL][21] ([i915#54] / [i915#95]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [FAIL][23] ([i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-glk:          [FAIL][25] ([i915#1566]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [FAIL][27] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * {igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][29] ([i915#34]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ac-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-kbl2/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][35] ([i915#899]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][39] ([i915#468]) -> [FAIL][40] ([i915#454])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [FAIL][42] ([fdo#108145] / [i915#265] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8395/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8395 -> Patchwork_17522

  CI-20190529: 20190529
  CI_DRM_8395: 2201d5931e67505f0ea5ac8f0244dfffa14a317d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5615: 7605cfd9463a6778ebb7ebae294a97c5779a6c7f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17522: fcc07f448a49d0a1e65060a6a88873c5edb4c63c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17522/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
