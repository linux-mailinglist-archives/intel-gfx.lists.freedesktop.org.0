Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E3111A46B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 07:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD876E167;
	Wed, 11 Dec 2019 06:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFBAF6E167;
 Wed, 11 Dec 2019 06:21:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7D3DA0114;
 Wed, 11 Dec 2019 06:21:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 11 Dec 2019 06:21:29 -0000
Message-ID: <157604528985.30693.1977212043701648968@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210223238.12022-1-manasi.d.navare@intel.com>
In-Reply-To: <20191210223238.12022-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRFJN?=
 =?utf-8?q?_and_i915_fixes_to_handle_hotplug/unplug_for_8K_tiled_displays?=
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

Series: DRM and i915 fixes to handle hotplug/unplug for 8K tiled displays
URL   : https://patchwork.freedesktop.org/series/70722/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534 -> Patchwork_15682
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15682 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15682, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15682:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_15682 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_sync@basic-all:
    - fi-tgl-y:           [PASS][4] -> [INCOMPLETE][5] ([i915#470])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-y/igt@gem_sync@basic-all.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-tgl-y/igt@gem_sync@basic-all.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][6] -> [FAIL][7] ([i915#178])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#725])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-u}:         [INCOMPLETE][10] ([fdo#111735]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-tgl-u/igt@gem_ctx_create@basic-files.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-tgl-u/igt@gem_ctx_create@basic-files.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][12] ([fdo#111407]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [i915#178]: https://gitlab.freedesktop.org/drm/intel/issues/178
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725


Participating hosts (53 -> 47)
------------------------------

  Additional (2): fi-hsw-4770r fi-kbl-7560u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15682

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15682: bc6fd5c9dfe590959996329e69a8708dc385a306 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bc6fd5c9dfe5 drm/i915/dp: Disable Port sync mode correctly on teardown
4d39ec6004ef drm/i915/dp: Make port sync mode assignments only if all tiles present
09aa086f5c07 drm/i915/dp: Make sure all tiled connectors get added to the state with full modeset
26cd16d87f13 drm/fbdev: Fallback to non tiled mode if all tiles not present
e95624b467dd drm: Handle connector tile support only for modes that match tile size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15682/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
