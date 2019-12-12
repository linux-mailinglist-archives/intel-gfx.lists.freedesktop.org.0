Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2711B11C37B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 03:46:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037C56EC35;
	Thu, 12 Dec 2019 02:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4C4E6EC34;
 Thu, 12 Dec 2019 02:46:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C36FA0BA8;
 Thu, 12 Dec 2019 02:46:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 12 Dec 2019 02:46:49 -0000
Message-ID: <157611880961.32008.16220670685103356969@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211212433.18185-1-manasi.d.navare@intel.com>
In-Reply-To: <20191211212433.18185-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm=3A_Handle_connector_tile_suppor?=
 =?utf-8?q?t_only_for_modes_that_match_tile_size?=
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

Series: series starting with [1/2] drm: Handle connector tile support only for modes that match tile size
URL   : https://patchwork.freedesktop.org/series/70790/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7545 -> Patchwork_15701
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15701 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15701, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15701:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_pm:
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-x1275/igt@i915_selftest@live_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_15701 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][2] -> [FAIL][3] ([i915#178])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-peppy:       [PASS][6] -> [INCOMPLETE][7] ([i915#694])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-nick:        [PASS][8] -> [DMESG-FAIL][9] ([i915#541])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-bsw-nick/igt@i915_selftest@live_gt_heartbeat.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][10] ([i915#553] / [i915#725]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][12] ([fdo#111096] / [i915#323]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [DMESG-WARN][14] ([i915#109] / [i915#289]) -> [DMESG-WARN][15] ([i915#289])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-icl-u2/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][16] ([i915#725]) -> [DMESG-FAIL][17] ([i915#770])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (52 -> 46)
------------------------------

  Missing    (6): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7545 -> Patchwork_15701

  CI-20190529: 20190529
  CI_DRM_7545: b1b808dff985c3c2050b20771050453589a60ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15701: 2b0a7be8f2636c049b492fce127416b1fa5212b4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2b0a7be8f263 drm/fbdev: Fallback to non tiled mode if all tiles not present
88188322c650 drm: Handle connector tile support only for modes that match tile size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15701/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
