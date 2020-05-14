Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEB71D2BEE
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 11:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D386EB1D;
	Thu, 14 May 2020 09:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A42D06EB1C;
 Thu, 14 May 2020 09:55:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CC09A008A;
 Thu, 14 May 2020 09:55:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 May 2020 09:55:36 -0000
Message-ID: <158945013661.2826.16234353985433460391@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200514062905.28668-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200514062905.28668-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Show_per-engine_default_property_values_in_sysfs_=28re?=
 =?utf-8?b?djIp?=
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

Series: drm/i915: Show per-engine default property values in sysfs (rev2)
URL   : https://patchwork.freedesktop.org/series/76396/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8481_full -> Patchwork_17655_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17655_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2}:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_17655_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-apl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#1119] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-kbl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-kbl7/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1119] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-apl6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#1188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-kbl6/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-kbl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-iclb5/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#31])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-kbl2/igt@kms_setmode@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-kbl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vecs0}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][27] ([i915#69]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl10/igt@i915_suspend@fence-restore-tiled2untiled.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][29] ([IGT#5]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate@c-edp1}:
    - shard-skl:          [FAIL][33] ([i915#1883]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-iclb1/igt@kms_psr@psr2_basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-iclb2/igt@kms_psr@psr2_basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-snb:          [INCOMPLETE][41] ([i915#82]) -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-snb1/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-snb1/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          [DMESG-FAIL][43] ([i915#1744]) -> [DMESG-FAIL][44] ([i915#1886])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-skl4/igt@i915_selftest@live@gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-skl1/igt@i915_selftest@live@gt_pm.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][45] ([fdo#110321]) -> [TIMEOUT][46] ([i915#1319]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-apl8/igt@kms_content_protection@atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-FAIL][47] ([i915#180] / [i915#95]) -> [FAIL][48] ([i915#1121] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8481/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8481 -> Patchwork_17655

  CI-20190529: 20190529
  CI_DRM_8481: 46f34234505b4e0eb3332974b47a36f9b0825de0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5654: 5637a466a0b09535517751608f5525a8b468a76b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17655: 9bc1646cd691999a2a3be549212c5802368b520c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17655/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
