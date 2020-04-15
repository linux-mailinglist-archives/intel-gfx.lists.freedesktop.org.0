Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FF41AAE6B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 18:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58ACE6EA33;
	Wed, 15 Apr 2020 16:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAA946EA31;
 Wed, 15 Apr 2020 16:46:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4A93A47DA;
 Wed, 15 Apr 2020 16:46:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Apr 2020 16:46:48 -0000
Message-ID: <158696920880.21014.10736100750910914828@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415131259.32732-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200415131259.32732-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_drm/i915/selftests=3A_Exercise_basic_RPS_inte?=
 =?utf-8?q?rrupt_generation_=28rev3=29?=
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

Series: series starting with drm/i915/selftests: Exercise basic RPS interrupt generation (rev3)
URL   : https://patchwork.freedesktop.org/series/75973/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8301 -> Patchwork_17313
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17313 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17313, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17313:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-tgl-y/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2520m:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-snb-2520m/igt@i915_selftest@live@gt_pm.html
    - fi-snb-2600:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-snb-2600/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-snb-2600/igt@i915_selftest@live@gt_pm.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {fi-tgl-dsi}:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-tgl-dsi/igt@i915_selftest@live@gt_pm.html
    - {fi-tgl-u}:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-tgl-u/igt@i915_selftest@live@gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-tgl-u/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17313 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-dsi:         [PASS][11] -> [INCOMPLETE][12] ([i915#189])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8301/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/fi-icl-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189


Participating hosts (50 -> 46)
------------------------------

  Additional (2): fi-skl-6770hq fi-cfl-8700k 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8301 -> Patchwork_17313

  CI-20190529: 20190529
  CI_DRM_8301: 7d2bdd2df0d18945bb274de8bc7560e14779e346 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5590: c7b4a43942be32245b1c00b5b4a38401d8ca6e0d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17313: 8c90502c194a05a684e39b7fdc7cb87207b4fad4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8c90502c194a drm/i915/gt: Update PMINTRMSK holding fw
0454a6c7dd1e drm/i915/selftests: Exercise basic RPS interrupt generation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17313/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
