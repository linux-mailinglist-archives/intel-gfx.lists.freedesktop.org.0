Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CBF128641
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 02:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1F36E15C;
	Sat, 21 Dec 2019 01:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C6646E15C;
 Sat, 21 Dec 2019 01:00:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 047ECA0087;
 Sat, 21 Dec 2019 01:00:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 21 Dec 2019 01:00:33 -0000
Message-ID: <157689003399.32690.4847031916665809755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
In-Reply-To: <20191220220650.16349-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_nuke_skl_workaround_for_pre-production_hw?=
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

Series: drm/i915/display: nuke skl workaround for pre-production hw
URL   : https://patchwork.freedesktop.org/series/71230/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7616 -> Patchwork_15866
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15866 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15866, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15866:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-bsw-n3050/igt@i915_selftest@live_gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_15866 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][2] -> [DMESG-FAIL][3] ([i915#725])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][4] -> [DMESG-FAIL][5] ([i915#725])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-8700k:       [PASS][6] -> [INCOMPLETE][7] ([i915#424])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [PASS][8] -> [INCOMPLETE][9] ([i915#45])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][10] ([i915#435]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-x1275:       [DMESG-WARN][12] ([i915#62] / [i915#92]) -> [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-kbl-x1275/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][15] ([i915#62] / [i915#92]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7616/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 45)
------------------------------

  Additional (5): fi-bsw-n3050 fi-hsw-peppy fi-elk-e7500 fi-tgl-y fi-bsw-nick 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7616 -> Patchwork_15866

  CI-20190529: 20190529
  CI_DRM_7616: 81105b549355270c1d15073dc7f7b137cdc3d5c4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15866: 71b76ffcf2ed8a2396845ce978b9a7ec21b6a731 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

71b76ffcf2ed drm/i915/display: nuke skl workaround for pre-production hw

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15866/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
