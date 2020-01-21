Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AF1143D53
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 13:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 508E76ECDB;
	Tue, 21 Jan 2020 12:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E76226ECDB;
 Tue, 21 Jan 2020 12:55:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D519DA0119;
 Tue, 21 Jan 2020 12:55:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 21 Jan 2020 12:55:43 -0000
Message-ID: <157961134384.11479.11005573588123009390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121113915.9813-1-jani.nikula@intel.com>
In-Reply-To: <20200121113915.9813-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_add_display_engine_uncore_helpers?=
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

Series: drm/i915: add display engine uncore helpers
URL   : https://patchwork.freedesktop.org/series/72331/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7783 -> Patchwork_16187
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16187 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16187, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16187:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-cfl-guc:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-cfl-guc/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16187 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#889])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-cfl-guc/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][6] -> [DMESG-FAIL][7] ([i915#553] / [i915#725])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][8] -> [INCOMPLETE][9] ([i915#424])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][10] -> [FAIL][11] ([i915#262])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [PASS][12] -> [FAIL][13] ([i915#217])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [DMESG-WARN][14] ([i915#889]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
    - fi-skl-6700k2:      [INCOMPLETE][16] ([i915#671]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-skl-6700k2/igt@i915_module_load@reload-with-fault-injection.html
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#889]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [INCOMPLETE][20] ([i915#151]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@gem_exec_parallel@contexts:
    - fi-byt-n2820:       [INCOMPLETE][22] ([i915#45] / [i915#999]) -> [TIMEOUT][23] ([fdo#112271])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/fi-byt-n2820/igt@gem_exec_parallel@contexts.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/fi-byt-n2820/igt@gem_exec_parallel@contexts.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#671]: https://gitlab.freedesktop.org/drm/intel/issues/671
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#889]: https://gitlab.freedesktop.org/drm/intel/issues/889
  [i915#999]: https://gitlab.freedesktop.org/drm/intel/issues/999


Participating hosts (44 -> 44)
------------------------------

  Additional (6): fi-glk-dsi fi-gdg-551 fi-bsw-kefka fi-kbl-7560u fi-bsw-nick fi-snb-2600 
  Missing    (6): fi-ilk-m540 fi-ehl-1 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16187

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16187: 2cd270746904178903db5dcda75726a6608df976 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2cd270746904 drm/i915: add display engine uncore helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16187/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
