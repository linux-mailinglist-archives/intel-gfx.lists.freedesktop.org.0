Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5961AA93B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 16:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B167D6E905;
	Wed, 15 Apr 2020 14:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C09D6E905;
 Wed, 15 Apr 2020 14:00:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13EFEA00C7;
 Wed, 15 Apr 2020 14:00:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 15 Apr 2020 14:00:45 -0000
Message-ID: <158695924505.21016.1805561137202897288@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200414050807.13531-1-manasi.d.navare@intel.com>
In-Reply-To: <20200414050807.13531-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/3=5D_drm/dp=3A_DRM_DP_helper_for_re?=
 =?utf-8?q?ading_Ignore_MSA_from_DPCD?=
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

Series: series starting with [v4,1/3] drm/dp: DRM DP helper for reading Ignore MSA from DPCD
URL   : https://patchwork.freedesktop.org/series/75899/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17293_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17293_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17293_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17293_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-tglb8/igt@perf_pmu@cpu-hotplug.html

  
Known issues
------------

  Here are the changes found in Patchwork_17293_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][2] -> [FAIL][3] ([i915#1066])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-glk:          [PASS][4] -> [INCOMPLETE][5] ([i915#58] / [k.org#198133])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@i915_pm_rpm@basic-rte.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-glk1/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#34])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][8] -> [SKIP][9] ([i915#668]) +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180] / [i915#93] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([fdo#108145] / [i915#265]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109441])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#31])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-wait@all}:
    - shard-skl:          [FAIL][22] ([i915#1676]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl9/igt@gem_wait@write-wait@all.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][24] ([i915#72]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][26] ([i915#79]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][28] ([i915#1188]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl9/igt@kms_hdr@bpc-switch.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][30] ([i915#180]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][32] ([fdo#109441]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][36] ([i915#198]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-skl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][38] ([i915#1515]) -> [FAIL][39] ([i915#1515])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][40] ([fdo#108145] / [i915#265]) -> [FAIL][41] ([fdo#108145] / [i915#265] / [i915#95])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][42] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][43] ([fdo#108145] / [i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
    - shard-apl:          [FAIL][44] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][45] ([fdo#108145] / [i915#265])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8298 -> Patchwork_17293

  CI-20190529: 20190529
  CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17293: 8f0b035d39defe9940ae35c3ec07a73afdcb69ad @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17293/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
