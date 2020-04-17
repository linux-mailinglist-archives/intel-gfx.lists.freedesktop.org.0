Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1190F1AD418
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 03:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515DC6E20C;
	Fri, 17 Apr 2020 01:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BFCB56E0C6;
 Fri, 17 Apr 2020 01:27:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0921A47DA;
 Fri, 17 Apr 2020 01:27:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 01:27:25 -0000
Message-ID: <158708684562.10464.2923473407271045857@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417002942.4394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417002942.4394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/5=5D_drm/i915/selftests=3A_Delay_sp?=
 =?utf-8?q?inner_before_waiting_for_an_interrupt?=
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

Series: series starting with [CI,1/5] drm/i915/selftests: Delay spinner before waiting for an interrupt
URL   : https://patchwork.freedesktop.org/series/76055/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8311 -> Patchwork_17338
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17338 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17338, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17338:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-r:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/fi-kbl-r/igt@i915_selftest@live@gt_pm.html
    - fi-skl-guc:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/fi-skl-guc/igt@i915_selftest@live@gt_pm.html
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17338 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-bwr-2160:        [FAIL][7] ([i915#489]) -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8311/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/fi-bwr-2160/igt@amdgpu/amd_prime@i915-to-amd.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (51 -> 45)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8311 -> Patchwork_17338

  CI-20190529: 20190529
  CI_DRM_8311: 19367bb5e65eaf0719597b3ff244fd1c2ea12bda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5593: 1c658f5e46598ae93345177d4981ef54704daec6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17338: 9bf31402e7bd605cb63ecbcc6c12ea4d7900edb2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9bf31402e7bd drm/i915/selftests: Check power consumption at min/max frequencies
19f5c73e9693 drm/i915/selftests: Move gpu energy measurement into its own little lib
14195cf9296d drm/i915/gt: Use the RPM config register to determine clk frequencies
6727bb3359e8 drm/i915/gt: Trace RPS events
840a974dda70 drm/i915/selftests: Delay spinner before waiting for an interrupt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17338/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
