Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B2D1818D4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 13:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03DB489D56;
	Wed, 11 Mar 2020 12:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F359E89D56;
 Wed, 11 Mar 2020 12:54:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBEE7A011A;
 Wed, 11 Mar 2020 12:54:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 11 Mar 2020 12:54:09 -0000
Message-ID: <158393124993.13953.15733713681899245481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_Gen11+_SAGV_support_=28rev3=29?=
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

Series: Refactor Gen11+ SAGV support (rev3)
URL   : https://patchwork.freedesktop.org/series/74461/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8117 -> Patchwork_16922
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16922 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16922, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16922:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-skl-6700k2:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-skl-6700k2/igt@kms_busy@basic@modeset.html
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-skl-guc/igt@kms_busy@basic@modeset.html
    - fi-kbl-7500u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-kbl-7500u/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-cfl-8109u/igt@kms_busy@basic@modeset.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-kbl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_16922 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-skl-6600u:       [PASS][11] -> [INCOMPLETE][12] ([i915#1242] / [i915#198])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-skl-6600u/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6770hq:      [PASS][13] -> [INCOMPLETE][14] ([i915#1242] / [i915#198])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-skl-6770hq/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][15] -> [INCOMPLETE][16] ([i915#1242])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-guc:         [PASS][17] -> [INCOMPLETE][18] ([i915#1242])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_busy@basic@modeset:
    - fi-cml-s:           [PASS][19] -> [INCOMPLETE][20] ([i915#283])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cml-s/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-cml-s/igt@kms_busy@basic@modeset.html
    - fi-cml-u2:          [PASS][21] -> [INCOMPLETE][22] ([i915#283])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-cml-u2/igt@kms_busy@basic@modeset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-cml-u2/igt@kms_busy@basic@modeset.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [INCOMPLETE][23] ([fdo#103927]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [DMESG-WARN][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8117/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#1242]: https://gitlab.freedesktop.org/drm/intel/issues/1242
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283


Participating hosts (49 -> 40)
------------------------------

  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-x1275 fi-skl-lmem fi-byt-clapper fi-kbl-r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8117 -> Patchwork_16922

  CI-20190529: 20190529
  CI_DRM_8117: 39a97a79462bf47caf47d8e56e1027dcedb92bb9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16922: f580b31fefefdc4e3175f47241c52a92d538821a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f580b31fefef drm/i915: Enable SAGV support for Gen12
a94ebc238e1b drm/i915: Restrict qgv points which don't have enough bandwidth.
c8c7805a79f0 drm/i915: Rename bw_state to new_bw_state
d423ddd36f1b drm/i915: Added required new PCode commands
7dc425c57481 drm/i915: Refactor intel_can_enable_sagv
6468178f6e57 drm/i915: Add intel_bw_get_*_state helpers
f4d2893b925e drm/i915: Introduce skl_plane_wm_level accessor.
aad38ffe3258 drm/i915: Start passing latency as parameter

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16922/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
