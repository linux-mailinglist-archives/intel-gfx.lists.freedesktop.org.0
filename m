Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92FF1905C5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 07:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C74B56E082;
	Tue, 24 Mar 2020 06:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FE006E082;
 Tue, 24 Mar 2020 06:30:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89D28A0094;
 Tue, 24 Mar 2020 06:30:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Date: Tue, 24 Mar 2020 06:30:50 -0000
Message-ID: <158503145053.4557.328309620211656385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316103759.12867-1-animesh.manna@intel.com>
In-Reply-To: <20200316103759.12867-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFAg?=
 =?utf-8?q?Phy_compliance_auto_test_=28rev9=29?=
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

Series: DP Phy compliance auto test (rev9)
URL   : https://patchwork.freedesktop.org/series/71121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8182 -> Patchwork_17062
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/index.html

Known issues
------------

  Here are the changes found in Patchwork_17062 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cml-s:           [DMESG-FAIL][1] ([i915#877]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/fi-cml-s/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][3] ([i915#481]) -> [DMESG-FAIL][4] ([i915#730] / [i915#933])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html

  
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (51 -> 34)
------------------------------

  Missing    (17): fi-cml-u2 fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-byt-j1900 fi-skl-6770hq fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-kbl-7500u fi-ctg-p8600 fi-ivb-3770 fi-byt-clapper fi-bsw-nick fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8182 -> Patchwork_17062

  CI-20190529: 20190529
  CI_DRM_8182: e5245084567cd7f6f93b07baaebf8a2b4d914620 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5531: 79e7382202c104b247a672c61a6186d1f51e4958 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17062: eeecea37ecbc074d3cfb7f80b514e9add7f87dcf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

eeecea37ecbc drm/i915/dp: Program vswing, pre-emphasis, test-pattern
608ba015c19c drm/i915/dp: Register definition for DP compliance register
db7de8a9c187 drm/i915/dp: Add debugfs entry for DP phy compliance
340216da24fa drm/i915/dp: Preparation for DP phy compliance auto test
1b2997dcbda5 drm/i915/dp: Made intel_dp_adjust_train() non-static
971a7ccb9e37 drm/dp: get/set phy compliance pattern
4e5780212f95 drm/amd/display: Align macro name as per DP spec

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17062/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
