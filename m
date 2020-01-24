Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A27B1475B7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 01:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F2F6E192;
	Fri, 24 Jan 2020 00:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D702A6E191;
 Fri, 24 Jan 2020 00:50:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6C9BA010F;
 Fri, 24 Jan 2020 00:50:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Jan 2020 00:50:15 -0000
Message-ID: <157982701578.15091.4414286146793698202@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200122201822.889250-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_GTT_scratch_pages_=28rev8=29?=
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

Series: drm/i915/gt: Poison GTT scratch pages (rev8)
URL   : https://patchwork.freedesktop.org/series/72423/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7805 -> Patchwork_16239
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16239 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16239, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16239:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-4770:        [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-hsw-4770/igt@i915_selftest@live_gem_contexts.html
    - fi-hsw-4770r:       [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-hsw-4770r/igt@i915_selftest@live_gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_16239 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@basic:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-tgl-y/igt@gem_exec_parallel@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-tgl-y/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@fds:
    - fi-hsw-peppy:       [PASS][7] -> [INCOMPLETE][8] ([i915#694])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-hsw-peppy/igt@gem_exec_parallel@fds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-hsw-peppy/igt@gem_exec_parallel@fds.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][9] ([i915#879]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][11] ([fdo#106070] / [i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_prop_blob@basic:
    - fi-tgl-y:           [DMESG-WARN][13] ([CI#94] / [i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-tgl-y/igt@kms_prop_blob@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-tgl-y/igt@kms_prop_blob@basic.html

  
#### Warnings ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][15] ([fdo#111407]) -> [FAIL][16] ([fdo#111096] / [i915#323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7805/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
  [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#879]: https://gitlab.freedesktop.org/drm/intel/issues/879


Participating hosts (45 -> 44)
------------------------------

  Additional (8): fi-kbl-7560u fi-bsw-n3050 fi-gdg-551 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-skl-6600u fi-snb-2600 
  Missing    (9): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-ctg-p8600 fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7805 -> Patchwork_16239

  CI-20190529: 20190529
  CI_DRM_7805: 447386749394e3b5cf296bfada83ed429fa5f1fe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5382: 8dbe5ce61baa2d563d4dd7c56a018bb1e1077467 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16239: 9d845748883a06142161a6a8c74c0bc34577a3f9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9d845748883a drm/i915/gt: Poison GTT scratch pages

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16239/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
