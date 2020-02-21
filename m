Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1C8168973
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D55C18966B;
	Fri, 21 Feb 2020 21:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F8668966B;
 Fri, 21 Feb 2020 21:42:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9743CA47E7;
 Fri, 21 Feb 2020 21:42:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 21 Feb 2020 21:42:14 -0000
Message-ID: <158232133458.7918.337498428578413523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev2=29?=
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

Series: Refactor Gen11+ SAGV support (rev2)
URL   : https://patchwork.freedesktop.org/series/73703/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7983 -> Patchwork_16662
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16662:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-guc/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-icl-guc/igt@kms_busy@basic@flip.html
    - {fi-tgl-u}:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-u/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-tgl-u/igt@kms_busy@basic@flip.html
    - fi-skl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-guc/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-y/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-icl-y/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-skl-6700k2/igt@kms_busy@basic@flip.html
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-u2/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-icl-u2/igt@kms_busy@basic@flip.html
    - fi-icl-dsi:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-icl-dsi/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-icl-dsi/igt@kms_busy@basic@flip.html
    - {fi-ehl-1}:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-ehl-1/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-ehl-1/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16662 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-8809g:       [PASS][18] -> [INCOMPLETE][19] ([i915#151])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-kbl-8809g/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][20] -> [INCOMPLETE][21] ([i915#938])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [INCOMPLETE][22] ([i915#45]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-byt-j1900/igt@gem_close_race@basic-threads.html
    - fi-byt-n2820:       [INCOMPLETE][24] ([i915#45]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][26] ([CI#94] / [i915#402]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-tgl-y:           [FAIL][28] ([CI#94]) -> [DMESG-WARN][29] ([CI#94] / [i915#402])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_rpm@module-reload:
    - fi-snb-2600:        [SKIP][30] ([fdo#109271]) -> [INCOMPLETE][31] ([i915#82])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-snb-2600/igt@i915_pm_rpm@module-reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-snb-2600/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][32] ([i915#1209]) -> [FAIL][33] ([fdo#109383])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/fi-kbl-8809g/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109383]: https://bugs.freedesktop.org/show_bug.cgi?id=109383
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#938]: https://gitlab.freedesktop.org/drm/intel/issues/938


Participating hosts (51 -> 32)
------------------------------

  Missing    (19): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-hsw-4200u fi-glk-dsi fi-byt-squawks fi-cfl-8700k fi-apl-guc fi-kbl-7500u fi-ctg-p8600 fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-bdw-samus fi-byt-clapper fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7983 -> Patchwork_16662

  CI-20190529: 20190529
  CI_DRM_7983: 85ccd7de7d75735a667c4133b0927481986a2a1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16662: c3ca73c4675f21f48e476f075d2bc0b5bad7e0a7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c3ca73c4675f drm/i915: Enable SAGV support for Gen12
53edf17a30f9 drm/i915: Restrict qgv points which don't have enough bandwidth.
b2dfa073b7e0 drm/i915: Added required new PCode commands
236d09415710 drm/i915: Refactor intel_can_enable_sagv
535a61cedba3 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
2712b33bd072 drm/i915: Introduce skl_plane_wm_level accessor.
ba1e4cbe4558 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16662/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
