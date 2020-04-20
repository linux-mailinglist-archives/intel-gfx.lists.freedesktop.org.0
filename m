Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC601B1520
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:48:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56366E7D4;
	Mon, 20 Apr 2020 18:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 260CE6E10A;
 Mon, 20 Apr 2020 18:48:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3234A0099;
 Mon, 20 Apr 2020 18:48:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Apr 2020 18:48:09 -0000
Message-ID: <158740848999.29875.15862956341562147855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420162509.29044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200420162509.29044-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_Verify_f?=
 =?utf-8?q?requency_scaling_with_RPS?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Verify frequency scaling with RPS
URL   : https://patchwork.freedesktop.org/series/76207/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8332 -> Patchwork_17387
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17387 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17387, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17387:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-icl-y/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-icl-y/igt@i915_selftest@live@gt_pm.html
    - fi-skl-6600u:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-skl-6600u/igt@i915_selftest@live@gt_pm.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-cfl-8109u/igt@i915_selftest@live@gt_pm.html
    - fi-whl-u:           [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-kbl-7560u}:     NOTRUN -> [DMESG-FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-kbl-7560u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17387 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-skl-6770hq:      [SKIP][10] ([fdo#109271]) -> [PASS][11] +20 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-skl-6770hq/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [DMESG-FAIL][12] ([i915#1725]) -> [DMESG-FAIL][13] ([i915#1744])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8332/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#1744]: https://gitlab.freedesktop.org/drm/intel/issues/1744


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8332 -> Patchwork_17387

  CI-20190529: 20190529
  CI_DRM_8332: ebfd6b831ffba0c7b50a59f228d236e92f4fa729 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17387: 5a1eb55b410f070470f539ee3432d5e1e1d71d33 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5a1eb55b410f drm/i915/selftests: Exercise dynamic reclocking with RPS
8b44ad32661e drm/i915/selftests: Show the pcode frequency table on error
094283df407d drm/i915/selftests: Split RPS frequency measurement
8a8b4c6f9d90 drm/i915/selftests: Check RPS controls
5596606385a1 drm/i915/selftests: Skip energy consumption tests if not controlling freq
18dc228e78a3 drm/i915/selftests: Verify frequency scaling with RPS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17387/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
