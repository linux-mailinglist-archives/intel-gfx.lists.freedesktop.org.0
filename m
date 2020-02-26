Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFABF170093
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 14:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEF2D6E94C;
	Wed, 26 Feb 2020 13:57:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1AE266E94C;
 Wed, 26 Feb 2020 13:57:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1263CA0099;
 Wed, 26 Feb 2020 13:57:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 26 Feb 2020 13:57:54 -0000
Message-ID: <158272547404.21011.12507076475620137402@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225130728.20198-1-jani.nikula@intel.com>
In-Reply-To: <20200225130728.20198-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_significantly_reduce_the_use_of_=3Cdrm/i915=5Fdrm=2Eh?=
 =?utf-8?b?PiAocmV2Mik=?=
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

Series: drm/i915: significantly reduce the use of <drm/i915_drm.h> (rev2)
URL   : https://patchwork.freedesktop.org/series/73902/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8005 -> Patchwork_16704
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/index.html

Known issues
------------

  Here are the changes found in Patchwork_16704 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_active:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2] ([i915#765])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-icl-y/igt@i915_selftest@live_active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-icl-y/igt@i915_selftest@live_active.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([CI#94] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-tgl-y/igt@kms_addfb_basic@addfb25-x-tiled-mismatch.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][5] ([fdo#106070] / [i915#424]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_lrc:
    - {fi-tgl-u}:         [DMESG-FAIL][7] ([i915#1233]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-tgl-u/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - fi-tgl-y:           [DMESG-WARN][9] ([CI#94] / [i915#402]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-icl-u2:          [FAIL][11] ([i915#217]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8005/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/fi-icl-u2/igt@kms_chamelium@hdmi-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#765]: https://gitlab.freedesktop.org/drm/intel/issues/765


Participating hosts (49 -> 45)
------------------------------

  Additional (1): fi-bdw-gvtdvm 
  Missing    (5): fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8005 -> Patchwork_16704

  CI-20190529: 20190529
  CI_DRM_8005: 81f641f60edbfa1ccb169689206f0af360a06e31 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5466: ffa98bc80f2f76b212d10b72ef7b93f842dbcb5a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16704: 50cad9bb5ff27db0745fccc3a0dd365153e90d17 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

50cad9bb5ff2 drm/i915: significantly reduce the use of <drm/i915_drm.h>

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16704/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
