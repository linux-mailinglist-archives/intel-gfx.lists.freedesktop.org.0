Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B93156540
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 16:48:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4D36E362;
	Sat,  8 Feb 2020 15:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DAE46E358;
 Sat,  8 Feb 2020 15:48:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DC62A01BB;
 Sat,  8 Feb 2020 15:48:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sat, 08 Feb 2020 15:48:00 -0000
Message-ID: <158117688015.30229.15634387362083311849@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200208122759.30833-1-andi@etezian.org>
In-Reply-To: <20200208122759.30833-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_management_fil?=
 =?utf-8?q?es?=
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

Series: drm/i915/gt: make a gt sysfs group and move power management files
URL   : https://patchwork.freedesktop.org/series/73190/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7892 -> Patchwork_16495
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16495 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16495, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16495:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@basic-api:
    - fi-icl-u3:          [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-u3/igt@i915_pm_rps@basic-api.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-icl-u3/igt@i915_pm_rps@basic-api.html
    - fi-cml-u2:          [PASS][3] -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-u2/igt@i915_pm_rps@basic-api.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cml-u2/igt@i915_pm_rps@basic-api.html
    - fi-icl-u2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-u2/igt@i915_pm_rps@basic-api.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-icl-u2/igt@i915_pm_rps@basic-api.html
    - fi-icl-guc:         [PASS][7] -> [SKIP][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-guc/igt@i915_pm_rps@basic-api.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-icl-guc/igt@i915_pm_rps@basic-api.html
    - fi-icl-y:           [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-y/igt@i915_pm_rps@basic-api.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-icl-y/igt@i915_pm_rps@basic-api.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rps@basic-api:
    - {fi-ehl-1}:         [PASS][11] -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-ehl-1/igt@i915_pm_rps@basic-api.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-ehl-1/igt@i915_pm_rps@basic-api.html
    - {fi-tgl-dsi}:       [PASS][13] -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-tgl-dsi/igt@i915_pm_rps@basic-api.html
    - {fi-tgl-u}:         [PASS][15] -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-tgl-u/igt@i915_pm_rps@basic-api.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-tgl-u/igt@i915_pm_rps@basic-api.html

  
Known issues
------------

  Here are the changes found in Patchwork_16495 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@basic-api:
    - fi-kbl-guc:         [PASS][17] -> [SKIP][18] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-kbl-guc/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8109u:       [PASS][19] -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cfl-8109u/igt@i915_pm_rps@basic-api.html
    - fi-hsw-4770r:       [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-hsw-4770r/igt@i915_pm_rps@basic-api.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-hsw-4770r/igt@i915_pm_rps@basic-api.html
    - fi-kbl-7500u:       [PASS][23] -> [SKIP][24] ([fdo#109271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-kbl-7500u/igt@i915_pm_rps@basic-api.html
    - fi-kbl-8809g:       [PASS][25] -> [SKIP][26] ([fdo#109271])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-kbl-8809g/igt@i915_pm_rps@basic-api.html
    - fi-glk-dsi:         [PASS][27] -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-glk-dsi/igt@i915_pm_rps@basic-api.html
    - fi-kbl-x1275:       [PASS][29] -> [SKIP][30] ([fdo#109271])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-kbl-x1275/igt@i915_pm_rps@basic-api.html
    - fi-skl-6770hq:      [PASS][31] -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@i915_pm_rps@basic-api.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-6770hq/igt@i915_pm_rps@basic-api.html
    - fi-cfl-guc:         [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cfl-guc/igt@i915_pm_rps@basic-api.html
    - fi-cfl-8700k:       [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cfl-8700k/igt@i915_pm_rps@basic-api.html
    - fi-hsw-4770:        [PASS][37] -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-hsw-4770/igt@i915_pm_rps@basic-api.html
    - fi-apl-guc:         [PASS][39] -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-apl-guc/igt@i915_pm_rps@basic-api.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-apl-guc/igt@i915_pm_rps@basic-api.html
    - fi-whl-u:           [PASS][41] -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-whl-u/igt@i915_pm_rps@basic-api.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-whl-u/igt@i915_pm_rps@basic-api.html
    - fi-skl-guc:         [PASS][43] -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-guc/igt@i915_pm_rps@basic-api.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-guc/igt@i915_pm_rps@basic-api.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-icl-dsi:         [PASS][45] -> [INCOMPLETE][46] ([i915#140])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-icl-dsi/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [FAIL][47] ([fdo#103375]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-skl-6770hq:      [DMESG-WARN][49] ([i915#92]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@i915_module_load@reload.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-6770hq/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][51] ([i915#553] / [i915#725]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [INCOMPLETE][53] ([i915#424]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][55] ([fdo#111096] / [i915#323]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [SKIP][57] ([fdo#109271]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-skl-6770hq:      [DMESG-WARN][59] ([i915#106] / [i915#188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [FAIL][61] ([fdo#103375]) -> [INCOMPLETE][62] ([i915#1078] / [i915#283])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [DMESG-WARN][63] ([i915#92]) -> [FAIL][64] ([i915#178])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7892/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#1078]: https://gitlab.freedesktop.org/drm/intel/issues/1078
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (44 -> 36)
------------------------------

  Additional (5): fi-bxt-dsi fi-bdw-5557u fi-hsw-peppy fi-ilk-650 fi-blb-e6850 
  Missing    (13): fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-ivb-3770 fi-bsw-kefka fi-skl-lmem fi-byt-n2820 fi-byt-clapper fi-bsw-nick fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7892 -> Patchwork_16495

  CI-20190529: 20190529
  CI_DRM_7892: c53ff44eb14e48089e25c34874b318e8f0d11c4c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5427: b7aaa77467742b977b1ea8716d90c7a9a2768220 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16495: e572bceec01037dcdfd46d875c0beea3e552c0a2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e572bceec010 drm/i915/gt: make a gt sysfs group and move power management files

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16495/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
