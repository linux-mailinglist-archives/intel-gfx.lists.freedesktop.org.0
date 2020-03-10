Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E53417FFA6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 14:58:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C446E2E2;
	Tue, 10 Mar 2020 13:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F12366E2E2;
 Tue, 10 Mar 2020 13:58:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC0F8A3ECB;
 Tue, 10 Mar 2020 13:58:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 10 Mar 2020 13:58:15 -0000
Message-ID: <158384869596.1150.7942655594465534168@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support?=
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

Series: Refactor Gen11+ SAGV support
URL   : https://patchwork.freedesktop.org/series/74461/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8106 -> Patchwork_16893
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16893 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16893, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16893:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-bwr-2160/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-bwr-2160/igt@i915_selftest@live@evict.html

  * igt@kms_busy@basic@modeset:
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-cfl-8109u/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_16893 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6770hq:      [PASS][11] -> [INCOMPLETE][12] ([i915#1242] / [i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][13] -> [INCOMPLETE][14] ([i915#1242])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-guc:         [PASS][15] -> [INCOMPLETE][16] ([i915#1242])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@dmabuf:
    - fi-ivb-3770:        [PASS][17] -> [DMESG-WARN][18] ([i915#1405])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-ivb-3770/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][19] -> [INCOMPLETE][20] ([i915#1405])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_busy@basic@modeset:
    - fi-cml-s:           [PASS][21] -> [INCOMPLETE][22] ([i915#283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-s/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][23] -> [INCOMPLETE][24] ([i915#283])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-cml-u2/igt@kms_busy@basic@modeset.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][25] -> [DMESG-WARN][26] ([CI#94] / [i915#402])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8106/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#1405]: https://gitlab.freedesktop.org/drm/intel/issues/1405
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Additional (4): fi-cfl-8109u fi-bdw-5557u fi-kbl-7500u fi-snb-2600 
  Missing    (10): fi-hsw-4200u fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-kbl-x1275 fi-skl-lmem fi-kbl-7560u fi-byt-clapper fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8106 -> Patchwork_16893

  CI-20190529: 20190529
  CI_DRM_8106: 5b0076e8066ea8218e7857ee1aa28b0670acde94 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5504: d6788bf0404f76b66170e18eb26c85004b5ccb25 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16893: 116c15e39e85e200b7eca05d90f64572400d5cbe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

116c15e39e85 drm/i915: Enable SAGV support for Gen12
3733daf9704b drm/i915: Restrict qgv points which don't have enough bandwidth.
69c7f39fa5d4 drm/i915: Rename bw_state to new_bw_state
26fec9c73c37 drm/i915: Added required new PCode commands
e1d39e7c0310 drm/i915: Refactor intel_can_enable_sagv
1f389ea12cba drm/i915: Add intel_bw_get_*_state helpers
7f788a230fbe drm/i915: Introduce skl_plane_wm_level accessor.
9c1a1e8de31f drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16893/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
