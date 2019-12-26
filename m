Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F012ADE9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2019 19:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE6C189B7B;
	Thu, 26 Dec 2019 18:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3FE1589B7B;
 Thu, 26 Dec 2019 18:23:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2FF51A00FD;
 Thu, 26 Dec 2019 18:23:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 26 Dec 2019 18:23:11 -0000
Message-ID: <157738459116.14824.1629477317627280347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191226174636.244584-1-matthew.d.roper@intel.com>
In-Reply-To: <20191226174636.244584-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_Wa=5F1407352427=3Aicl=2Cehl?=
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

Series: drm/i915: Add Wa_1407352427:icl,ehl
URL   : https://patchwork.freedesktop.org/series/71403/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7637 -> Patchwork_15928
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15928 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15928, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15928:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6600u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-skl-6600u/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6600u:       [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-skl-6600u/igt@i915_pm_rpm@module-reload.html
    - fi-bxt-dsi:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-bxt-dsi:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-bxt-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15928 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [PASS][10] -> [DMESG-WARN][11] ([fdo#111764])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][12] -> [FAIL][13] ([fdo#111407])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][14] ([i915#435]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_create@basic:
    - {fi-tgl-u}:         [INCOMPLETE][16] ([fdo#111736]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-tgl-u/igt@gem_exec_create@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-tgl-u/igt@gem_exec_create@basic.html

  * igt@i915_selftest@live_execlists:
    - fi-kbl-soraka:      [DMESG-FAIL][18] ([i915#656]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-soraka/igt@i915_selftest@live_execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-kbl-soraka/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][21] ([i915#62] / [i915#92]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92]) -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7637/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (47 -> 40)
------------------------------

  Additional (4): fi-bsw-kefka fi-skl-6770hq fi-skl-lmem fi-skl-6700k2 
  Missing    (11): fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7637 -> Patchwork_15928

  CI-20190529: 20190529
  CI_DRM_7637: 0fc0908e6c01a7ebed3baff96bb4a50675431e82 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15928: e1a9f002cbbacbe11b6613e4a2a428cdfc230d2d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e1a9f002cbba drm/i915: Add Wa_1407352427:icl,ehl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15928/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
