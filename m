Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8B217416F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 22:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4DF66F4DC;
	Fri, 28 Feb 2020 21:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3919A6F43B;
 Fri, 28 Feb 2020 21:27:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3277EA0071;
 Fri, 28 Feb 2020 21:27:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 28 Feb 2020 21:27:51 -0000
Message-ID: <158292527120.7475.6665324435645692998@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Don=27t_check_uv=5Fwm_i?=
 =?utf-8?b?biBza2xfcGxhbmVfd21fZXF1YWxzKCk=?=
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

Series: series starting with [1/4] drm/i915: Don't check uv_wm in skl_plane_wm_equals()
URL   : https://patchwork.freedesktop.org/series/74092/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8033 -> Patchwork_16768
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16768:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16768 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-cfl-8109u:       [PASS][2] -> [DMESG-FAIL][3] ([i915#666])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-cfl-8109u/igt@i915_selftest@live@active.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-cfl-8109u/igt@i915_selftest@live@active.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([CI#94] / [i915#402])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][6] ([CI#94]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6700k2:      [INCOMPLETE][8] ([i915#151]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-skl-6700k2/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][10] ([fdo#111407]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][12] ([i915#44]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_self_import@basic-llseek-bad:
    - fi-tgl-y:           [DMESG-WARN][14] ([CI#94] / [i915#402]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8033/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/fi-tgl-y/igt@prime_self_import@basic-llseek-bad.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (48 -> 41)
------------------------------

  Additional (4): fi-kbl-soraka fi-byt-j1900 fi-glk-dsi fi-kbl-7560u 
  Missing    (11): fi-ilk-m540 fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-ivb-3770 fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8033 -> Patchwork_16768

  CI-20190529: 20190529
  CI_DRM_8033: de34c8a09179f693b84174d43855172ec76c30b3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5477: 3fe5828f45fc533ba4d9ee84dbb5aea320ce61bc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16768: bf886daea063a6a886ea297a5500004e12d69692 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bf886daea063 drm/i915: Implement display w/a 1140 for glk/cnl
c32d3d0a88d0 drm/i915: Enable transition watermarks for glk
1a8724cb6ad6 drm/i915: Don't check for wm changes until we've compute the wms fully
d874557c951e drm/i915: Don't check uv_wm in skl_plane_wm_equals()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16768/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
