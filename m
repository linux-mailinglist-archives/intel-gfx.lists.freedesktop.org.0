Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC371B2A80
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99D226E12F;
	Tue, 21 Apr 2020 14:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C7A06E09A;
 Tue, 21 Apr 2020 14:52:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 66C04A0BA8;
 Tue, 21 Apr 2020 14:52:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Apr 2020 14:52:30 -0000
Message-ID: <158748075038.17660.9525323777928728197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421134512.27910-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200421134512.27910-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Make_the_slice=3Aunslice_ratio_request_explicit_for?=
 =?utf-8?q?_RPS?=
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

Series: drm/i915/gt: Make the slice:unslice ratio request explicit for RPS
URL   : https://patchwork.freedesktop.org/series/76269/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8343 -> Patchwork_17406
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17406 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17406, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17406:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@requests:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-byt-j1900/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-byt-j1900/igt@i915_selftest@live@requests.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_timelines:
    - {fi-tgl-u}:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-tgl-u/igt@i915_selftest@live@gt_timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-tgl-u/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_17406 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-cfl-8109u:       [DMESG-FAIL][5] ([i915#1751]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-apl-guc:         [DMESG-FAIL][7] ([i915#1751]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-apl-guc/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-apl-guc/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [FAIL][9] ([i915#976]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][11] ([i915#62]) -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [DMESG-FAIL][13] -> [DMESG-FAIL][14] ([i915#1754])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8343/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/fi-icl-u2/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1751]: https://gitlab.freedesktop.org/drm/intel/issues/1751
  [i915#1754]: https://gitlab.freedesktop.org/drm/intel/issues/1754
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (48 -> 42)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8343 -> Patchwork_17406

  CI-20190529: 20190529
  CI_DRM_8343: a5f7098d36b9370b08717c04d894d01c7cb4320b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17406: 976b9b93bd0bc34f76f17bd471445674332f4d27 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

976b9b93bd0b drm/i915/gt: Make the slice:unslice ratio request explicit for RPS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17406/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
