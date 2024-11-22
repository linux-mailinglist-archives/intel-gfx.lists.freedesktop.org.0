Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B112C9D60E9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 15:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0FD10E16A;
	Fri, 22 Nov 2024 14:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C28E10E16A;
 Fri, 22 Nov 2024 14:55:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/dpt=3A_Restrict_?=
 =?utf-8?q?shrinker_to_DPT_objects_not_mapped?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vidya Srinivas" <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2024 14:55:10 -0000
Message-ID: <173228731039.1728786.8240680649909770409@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241122110741.405941-1-vidya.srinivas@intel.com>
In-Reply-To: <20241122110741.405941-1-vidya.srinivas@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dpt: Restrict shrinker to DPT objects not mapped
URL   : https://patchwork.freedesktop.org/series/141695/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15731 -> Patchwork_141695v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_141695v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_141695v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): bat-adlp-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_141695v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-mtlp-6:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/bat-mtlp-6/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/bat-mtlp-6/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_141695v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][3] -> [ABORT][4] ([i915#12061]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][5] -> [ABORT][6] ([i915#12061])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - bat-dg2-13:         [PASS][7] -> [FAIL][8] ([i915#12440])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/bat-dg2-13/igt@kms_chamelium_frames@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [FAIL][9] ([i915#12903]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-cfl-8109u:       [DMESG-WARN][11] ([i915#11621] / [i915#1982]) -> [DMESG-WARN][12] ([i915#11621])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15731/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12440]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12440
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15731 -> Patchwork_141695v1

  CI-20190529: 20190529
  CI_DRM_15731: a381faddbfc974e7bd57efe953a738415afccd6a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8122: 8122
  Patchwork_141695v1: a381faddbfc974e7bd57efe953a738415afccd6a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141695v1/index.html
