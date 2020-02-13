Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD52615CA03
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 19:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 691F56E391;
	Thu, 13 Feb 2020 18:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56C8A8825B;
 Thu, 13 Feb 2020 18:10:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45CBEA011C;
 Thu, 13 Feb 2020 18:10:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 13 Feb 2020 18:10:42 -0000
Message-ID: <158161744225.17962.7769476741309852637@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200213161122.3689609-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Ensure_=27ENABLE=5FB?=
 =?utf-8?q?OOT=5FFETCH=27_is_enabled_before_ppGTT?=
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

Series: series starting with [1/2] drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is enabled before ppGTT
URL   : https://patchwork.freedesktop.org/series/73419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7933 -> Patchwork_16561
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/index.html

Known issues
------------

  Here are the changes found in Patchwork_16561 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gtt:
    - fi-cfl-8700k:       [PASS][1] -> [TIMEOUT][2] ([fdo#112271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-cfl-8700k/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-cfl-8700k/igt@i915_selftest@live_gtt.html

  * igt@i915_selftest@live_hangcheck:
    - fi-hsw-4770r:       [PASS][3] -> [INCOMPLETE][4] ([i915#857])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-hsw-4770r/igt@i915_selftest@live_hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-hsw-4770r/igt@i915_selftest@live_hangcheck.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [INCOMPLETE][5] ([i915#45]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_active:
    - fi-kbl-7500u:       [DMESG-FAIL][7] ([i915#666]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-kbl-7500u/igt@i915_selftest@live_active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-kbl-7500u/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [TIMEOUT][9] ([fdo#112271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][11] ([i915#262]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-skl-6770hq:      [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-skl-6770hq/igt@prime_self_import@basic-llseek-bad.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-skl-6770hq/igt@prime_self_import@basic-llseek-bad.html

  
#### Warnings ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][15] ([i915#45]) -> [TIMEOUT][16] ([fdo#112271] / [i915#1084] / [i915#816])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7933/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#857]: https://gitlab.freedesktop.org/drm/intel/issues/857


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7933 -> Patchwork_16561

  CI-20190529: 20190529
  CI_DRM_7933: 30e316a9d8477309cc3e070d72f0dedbfc7604e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5440: 860924b6ccbed75b66ab4b65897bb9abc91763ea @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16561: 6797ddd102fab7c8ce533f916399abfa97476e62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6797ddd102fa drm/i915/gt: Compute PP_DIR_BASE explicitly
9d5b208964c9 drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is enabled before ppGTT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16561/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
