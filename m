Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BA0163687
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:54:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4AFA6EAD7;
	Tue, 18 Feb 2020 22:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 741BE6EAD7;
 Tue, 18 Feb 2020 22:54:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CA49A47E7;
 Tue, 18 Feb 2020 22:54:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 18 Feb 2020 22:54:51 -0000
Message-ID: <158206649141.31430.11647867870448806094@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200218162232.14368-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVm?=
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
URL   : https://patchwork.freedesktop.org/series/73584/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7963 -> Patchwork_16601
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16601:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_busy@basic@flip}:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-guc/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-icl-guc/igt@kms_busy@basic@flip.html
    - {fi-tgl-u}:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-tgl-u/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-tgl-u/igt@kms_busy@basic@flip.html
    - fi-skl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-skl-guc/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-skl-guc/igt@kms_busy@basic@flip.html
    - fi-icl-y:           [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-y/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-icl-y/igt@kms_busy@basic@flip.html
    - fi-skl-6700k2:      [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-skl-6700k2/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-skl-6700k2/igt@kms_busy@basic@flip.html
    - fi-icl-u2:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u2/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-icl-u2/igt@kms_busy@basic@flip.html
    - {fi-tgl-dsi}:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-tgl-dsi/igt@kms_busy@basic@flip.html
    - fi-icl-dsi:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-dsi/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-icl-dsi/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16601 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u3:          [PASS][18] -> [DMESG-WARN][19] ([i915#585]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-icl-u3/igt@debugfs_test@read_all_entries.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-icl-u3/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@contexts:
    - {fi-ehl-1}:         [INCOMPLETE][20] ([i915#937]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-ehl-1/igt@gem_exec_parallel@contexts.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-ehl-1/igt@gem_exec_parallel@contexts.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][22] ([i915#1209]) -> [FAIL][23] ([i915#192] / [i915#193] / [i915#194])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7963/fi-kbl-8809g/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/fi-kbl-8809g/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#192]: https://gitlab.freedesktop.org/drm/intel/issues/192
  [i915#193]: https://gitlab.freedesktop.org/drm/intel/issues/193
  [i915#194]: https://gitlab.freedesktop.org/drm/intel/issues/194
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#585]: https://gitlab.freedesktop.org/drm/intel/issues/585
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (50 -> 30)
------------------------------

  Missing    (20): fi-kbl-soraka fi-ilk-m540 fi-bxt-dsi fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-glk-dsi fi-bsw-cyan fi-cfl-8700k fi-apl-guc fi-cfl-guc fi-ctg-p8600 fi-kbl-x1275 fi-cfl-8109u fi-bsw-kefka fi-skl-lmem fi-bdw-samus fi-skl-6600u fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7963 -> Patchwork_16601

  CI-20190529: 20190529
  CI_DRM_7963: e0d737598eb749378a5dc4ed3dfafc6f79d512cb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5448: 116020b1f83c1b3994c76882df7f77b6731d78ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16601: ce7aae32b76b920bba50abdd8229982f18539845 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ce7aae32b76b drm/i915: Enable SAGV support for Gen12
d54a20f1dbff drm/i915: Restrict qgv points which don't have enough bandwidth.
5c948ee6e68b drm/i915: Added required new PCode commands
fe62c40aa234 drm/i915: Refactor intel_can_enable_sagv
f8c8b7d5f472 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
b0f9bed0c1be drm/i915: Introduce skl_plane_wm_level accessor.
1c72d442abeb drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16601/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
