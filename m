Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A751DFB38
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 23:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C18A6E215;
	Sat, 23 May 2020 21:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A60C46E215;
 Sat, 23 May 2020 21:35:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 984B5A363B;
 Sat, 23 May 2020 21:35:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Sat, 23 May 2020 21:35:19 -0000
Message-ID: <159026971959.11803.9509138959379201176@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522051931.54191-1-jhubbard@nvidia.com>
In-Reply-To: <20200522051931.54191-1-jhubbard@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbW0v?=
 =?utf-8?q?gup=2C_drm/i915=3A_refactor_gup=5Ffast=2C_convert_to_pin=5Fuser?=
 =?utf-8?b?X3BhZ2VzKCk=?=
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

Series: mm/gup, drm/i915: refactor gup_fast, convert to pin_user_pages()
URL   : https://patchwork.freedesktop.org/series/77598/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8529_full -> Patchwork_17765_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17765_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17765_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17765_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-glk9/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-glk5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  
Known issues
------------

  Here are the changes found in Patchwork_17765_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1436] / [i915#716])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-kbl4/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#1188])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#155])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][19] ([i915#1528]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-skl8/igt@gem_ctx_persistence@processes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-skl10/igt@gem_ctx_persistence@processes.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][23] ([fdo#108145] / [i915#265]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][25] ([fdo#109441]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][27] -> [SKIP][28] ([i915#588])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][29] ([i915#468]) -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][31] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][32] ([i915#1319]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][33] ([fdo#110321]) -> [TIMEOUT][34] ([i915#1319])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-apl4/igt@kms_content_protection@srm.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [FAIL][36] ([fdo#108145] / [i915#265] / [i915#95])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][37] ([fdo#109642] / [fdo#111068]) -> [FAIL][38] ([i915#608])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8529 -> Patchwork_17765

  CI-20190529: 20190529
  CI_DRM_8529: 9ae23ae1b437ee0d75ed2153eca05ecbd8c417bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5676: ff03d458f708583c8f9296f97c38df312055651a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17765: d301b652c2daccd5d53d400be39d95579c590701 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
